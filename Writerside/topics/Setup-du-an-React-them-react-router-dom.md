# Thêm react router dom

## Cài đặt thư viện

```Bash
npm install react-router-dom localforage match-sorter sort-by
```

## Thêm ```BrowserRouter``` vào ```main```

```Typescript
    <BrowserRouter>
        <Provider store={store}>
            <App/>
        </Provider>
    </BrowserRouter>
```