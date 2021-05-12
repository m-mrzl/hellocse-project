# hcse-project

## Installation

1) Install composer dependencies
```bash
composer install 
```

2) An application key need to be generated with the command
 ```bash
composer install
```

3) Open Project in a Code Editor, rename .env.example to .env and modify DB name, username, password to your environment. 

4) Migrate the database along with seed
 ```bash
php artisan migrate --seed
```
5) Now run the artisan serve command
 ```bash
php artisan serve
```
