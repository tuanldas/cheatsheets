# Laravel Passport

Cài đặt
---------------

### Cài đặt bằng composer

```
composer require laravel/passport
```

```
php artisan migrate

Có thể sử dụng uuids thay cho id bằng cách

php artisan passport:install --uuids
```

```
php artisan vendor:publish --tag=passport-config
```

Sau đó thêm env

```
PASSPORT_PERSONAL_ACCESS_CLIENT_ID=...
PASSPORT_PERSONAL_ACCESS_CLIENT_SECRET=...
```

Thêm vào hàm ```boot``` của ```AuthServiceProvider```

```
Passport::ignoreRoutes();
Passport::tokensExpireIn(now()->addDays(15));
Passport::refreshTokensExpireIn(now()->addDays(30));
Passport::personalAccessTokensExpireIn(now()->addMonths(6));
Passport::hashClientSecrets();
```
