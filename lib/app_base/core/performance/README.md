# 🔥 Firebase Performance Implementation

## Overview

This implementation provides comprehensive API performance monitoring for your Flutter app using Firebase Performance. It automatically tracks all HTTP requests, their duration, success/failure rates, errors, and custom business logic performance.

## 🎯 What's Tracked Automatically

### 1. **All API Calls** (Automatic via Interceptor)
- ✅ **Request Duration** - How long each API call takes
- ✅ **Success/Failure Rates** - Track which APIs succeed or fail
- ✅ **HTTP Status Codes** - 200, 404, 500, etc.
- ✅ **Request/Response Payload Sizes** - Monitor data transfer
- ✅ **Error Types** - Connection timeout, network errors, etc.
- ✅ **Endpoint Classification** - Categorize by performance (fast/slow/error)

### 2. **Error Tracking**
- Connection timeouts
- Send/receive timeouts  
- Network connection errors
- SSL certificate errors
- Bad responses (4xx, 5xx)
- Request cancellations

### 3. **Custom Business Logic**
- Screen loading times
- User action performance
- Authentication flows
- Transfer operations
- Data processing performance

## 🏗️ Architecture

```
FirebasePerformanceInterceptor (Dio)
├── Automatically tracks ALL HTTP requests
├── Measures request/response times  
├── Captures error details
└── Sends metrics to Firebase

FirebasePerformanceManager
├── Manual custom trace tracking
├── Screen performance monitoring
├── User action tracking
└── Business logic performance
```

## 📊 Firebase Console Metrics

In your Firebase Console > Performance, you'll see:

### Network Tab
- **All API endpoints** with response times
- **Success rates** per endpoint
- **Error rates** and types
- **Payload sizes** for requests/responses
- **Performance trends** over time

### Custom Traces Tab
- **Screen loading times** (dashboard, login, etc.)
- **User actions** (button clicks, form submissions)
- **Business flows** (authentication, transfers)
- **Data processing** performance

## 🛠️ Implementation Details

### Automatic API Tracking

Every API call made through your Dio client is automatically tracked:

```dart
// This call is automatically tracked:
final response = await apiService.post('/login', data: loginData);

// Firebase Performance captures:
// - URL: https://api.yourbank.com/login
// - Method: POST
// - Duration: 1.2 seconds
// - Status: 200
// - Request size: 156 bytes
// - Response size: 2.1 KB
// - Success: true
```

### Manual Performance Tracking

For custom business logic:

```dart
// Track screen loading
await performanceManager.trackScreenLoad('dashboard');

// Track user actions
await performanceManager.trackUserAction('transfer_submit', 
  screenName: 'transfer',
  attributes: {'amount': '1000', 'currency': 'USD'}
);

// Manual trace for complex operations
await performanceManager.startTrace('data_sync');
// ... your business logic
await performanceManager.stopTrace('data_sync');
```

## 📈 What You'll See in Firebase

### API Performance Dashboard
```
/api/login
├── Average response time: 1.2s
├── Success rate: 98.5%
├── Error rate: 1.5%
├── P95 response time: 2.1s
└── Most common errors: Connection timeout (0.8%)

/api/accounts
├── Average response time: 0.8s
├── Success rate: 99.2%
├── Error rate: 0.8%
└── Traffic: 1,250 requests/day
```

### Custom Traces
```
screen_load_dashboard
├── Average duration: 800ms
├── P95 duration: 1.2s
└── Samples: 450/day

user_action_login_button_click  
├── Average duration: 50ms
├── Success rate: 100%
└── Attributes: user_type, login_method
```

## 🔧 Configuration

### Environment-Based Enablement
```dart
// In environment_utils.dart
static bool get isFirebasePerformanceEnabled => isProd;
```

Performance tracking is:
- ✅ **Enabled** in Production (`isProd = true`)
- ❌ **Disabled** in Development/Staging (no overhead)

### Interceptor Order
```dart
// In RemoteApiService
_dio.interceptors.add(sessionInterceptor);           // 1st - Auth
_dio.interceptors.add(firebasePerformanceInterceptor); // 2nd - Performance
_dio.interceptors.add(chuckerInterceptor);           // 3rd - Debug (dev only)
```

## 🎛️ Key Metrics Tracked

### Automatic HTTP Metrics
| Metric | Description | Example |
|--------|-------------|---------|
| **URL** | API endpoint | `/api/accounts` |
| **Method** | HTTP method | `GET`, `POST` |
| **Duration** | Request time | `1.2 seconds` |
| **Status Code** | HTTP response | `200`, `404`, `500` |
| **Request Size** | Payload sent | `256 bytes` |
| **Response Size** | Payload received | `2.1 KB` |
| **Success/Error** | Result status | `success` or `error` |
| **Error Type** | Specific error | `connection_timeout` |

### Custom Trace Attributes
| Attribute | Description | Example |
|-----------|-------------|---------|
| **screen_name** | UI screen | `dashboard` |
| **action_name** | User action | `login_button_click` |
| **transfer_amount** | Business data | `1000` |
| **user_type** | User category | `premium` |
| **success** | Operation result | `true`/`false` |

## 🚨 Error Monitoring

### Tracked Error Types
- **Connection Timeout** (408) - Network too slow
- **Send Timeout** (408) - Upload too slow  
- **Receive Timeout** (504) - Download too slow
- **Connection Error** (503) - Network unavailable
- **Bad Certificate** (495) - SSL issues
- **Bad Response** (4xx/5xx) - Server errors
- **Request Cancelled** (499) - User cancelled

### Error Details in Firebase
```
API Error Summary:
├── /api/transfer: 2.1% error rate
│   ├── Connection timeout: 1.2%
│   ├── Server error (500): 0.7%
│   └── Bad request (400): 0.2%
└── /api/accounts: 0.5% error rate
    └── Connection timeout: 0.5%
```

## 🔄 Automatic Cleanup

The system automatically cleans up resources:

```dart
// On app termination or logout
await performanceManager.cleanup();
// - Stops all active traces
// - Completes pending HTTP metrics  
// - Cleans up interceptor resources
```

## 📱 Real-World Usage Examples

### Banking App Scenarios

1. **Login Flow Performance**
```dart
// Automatically tracked:
- POST /api/auth/login (1.2s)
- GET /api/user/profile (0.8s) 
- GET /api/accounts (0.9s)

// Custom tracking:
- screen_load_dashboard (800ms total)
- user_action_biometric_login (50ms)
```

2. **Transfer Operation**
```dart
// API calls tracked automatically:
- POST /api/transfer/validate (0.5s)
- POST /api/transfer/submit (2.1s)
- GET /api/transfer/status (0.3s)

// Business logic tracked manually:
- transfer_flow_total (5.2s end-to-end)
- otp_verification (30s including user input)
```

3. **Error Scenarios**
```dart
// Network issues automatically captured:
- Connection timeout to /api/accounts (408)
- Server error on /api/transfer (500)
- SSL certificate error (495)

// Business errors manually tracked:
- invalid_account_number (custom trace)
- insufficient_funds (custom trace)
```

## 🎯 Benefits

### For Developers
- **Zero-code API monitoring** - All HTTP calls tracked automatically
- **Easy custom tracking** - Simple API for business logic
- **Environment-aware** - No performance impact in development
- **Comprehensive error tracking** - Know exactly what's failing

### For Product/Business
- **API performance visibility** - Which APIs are slow/fast
- **User experience metrics** - How long do screens take to load?
- **Error rate monitoring** - What percentage of operations fail?
- **Performance trends** - Is the app getting faster or slower?

### For Operations
- **Real-time monitoring** - See performance issues as they happen
- **Error alerting** - Firebase can alert on performance degradation
- **Capacity planning** - Understand traffic patterns and response times
- **SLA monitoring** - Track if you're meeting performance targets

## 🔗 Firebase Console Access

1. Go to [Firebase Console](https://console.firebase.google.com)
2. Select your project
3. Navigate to **Performance** in the left sidebar
4. View **Network** tab for API performance
5. View **Custom traces** tab for business logic performance

## 🚀 Next Steps

This implementation gives you comprehensive API and performance monitoring. You can now:

1. **Monitor API health** - Track response times and error rates
2. **Optimize slow endpoints** - Identify which APIs need improvement  
3. **Track user experience** - Measure screen loading and interaction times
4. **Set up alerts** - Get notified when performance degrades
5. **Make data-driven decisions** - Use performance data to prioritize improvements 