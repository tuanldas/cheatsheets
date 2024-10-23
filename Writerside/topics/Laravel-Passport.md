# Laravel Passport

Cài đặt
---------------

### Cài đặt bằng composer

```
php artisan install:api --passport
```

```
php artisan migrate

Có thể sử dụng uuids thay cho id bằng cách

php artisan passport:install --uuids

php artisan vendor:publish --tag=passport-config

php artisan passport:keys
```

Sau đó thêm env
Sử dụng access client
```
PASSPORT_PERSONAL_ACCESS_CLIENT_ID=...
PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET=...
```

> Sử dụng Password grant client

Thêm vào hàm ```boot``` của ```AuthServiceProvider```

```
Passport::ignoreRoutes();
Passport::tokensExpireIn(now()->addDays(15));
Passport::refreshTokensExpireIn(now()->addDays(30));
Passport::personalAccessTokensExpireIn(now()->addMonths(6));
Passport::hashClientSecrets();
```

Thay thư viện HasApiTokens mặc định tại User model bằng:

```
use Laravel\Passport\HasApiTokens;
```

Bổ sung cấu hình sử dụng passport cho api

Tại file ```config/auth.php``` thêm cấu hình

```
  'guards' => [
    'web' => [
        'driver' => 'session',
        'provider' => 'users',
    ],
 
    'api' => [
        'driver' => 'passport',
        'provider' => 'users',
    ],
  ],
```

