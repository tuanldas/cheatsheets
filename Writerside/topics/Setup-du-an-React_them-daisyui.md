# Thêm daisyui

## Cài đặt

```Bash
npm i daisyui@latest
```

{prompt="$"}

Sau đó thêm DaisyUI vào tệp `tailwind.config.js` của bạn:

```Typescript
import daisyui from "daisyui";

/** @type {import('tailwindcss').Config} */
export default {
    content: ["./src/**/*.{html,js,ts,tsx}"],
    theme: {
        extend: {},
    },
    plugins: [daisyui],
    daisyui: {
        themes: ["light", "dark", "cupcake"],
    },
}
```

## Sử dụng theme

Data-theme bắt buộc phải khai báo trong tailwind.config.js

```HTML
<html data-theme="cupcake">

</html>
```