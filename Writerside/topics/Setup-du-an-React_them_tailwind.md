# Thêm tailwind


## Cài đặt tailwind

```Bash
npm install tailwindcss postcss autoprefixer sass
npx tailwindcss init
```

{prompt="$"}

## Thêm tailwind vào cấu hình postcss

Thêm cấu hình vào file ```postcss.config.cjs```

```Typescript
module.exports = {
  plugins: {
    tailwindcss: {},
    autoprefixer: {},
  }
}
```

Cấu hình đường dẫn dự án

```Typescript
module.exports = {
  content: ["./src/**/*.{html,js}"],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

Thêm các Tailwind directives vào ```main.css```

```CSS
@tailwind base;
@tailwind components;
@tailwind utilities;
```
