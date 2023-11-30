# React Redux

### Cài đặt

```
npm install redux react-redux redux-saga @reduxjs/toolkit
```

Hướng dẫn
-------

### Type File

```
export type UserType = {
    id: string;
    name: string;
    lastname: string;
    email: string;
    active: boolean;
    createdAt: Date;
    updatedAt: Date;
}

export type UserState = {
    data: UserType | null;
    isLoading: boolean;
    errors: string;
}
export const USERS = "users";

export const GET_USER_BY_ID = `${USERS}/getUserByIdAction`;
```

### Slice File{.col-span-2}

```
import {createSlice, PayloadAction} from "@reduxjs/toolkit";
import {UserState, USERS, UserType} from "../types/UserTypes";

const initialState: UserState = {
    data: null,
    isLoading: false,
    errors: '',
}

export const usersSlice = createSlice({
    name: USERS,
    initialState: initialState,
    reducers: {
        getUserAction: (state: UserState, {payload: id}: PayloadAction<string>) => {
            state.isLoading = true;
            state.errors = '';
        },
        getUserSuccessAction: (state: UserState, {payload: user}: PayloadAction<UserType>) => {
            state.isLoading = false;
            state.data = user;
        },
        getUserErrorAction: (state: UserState, {payload: error}: PayloadAction<string>) => {
            state.isLoading = false;
            state.errors = error;
        },
    }
})

export const {
    getUserAction,
    getUserSuccessAction,
    getUserErrorAction
}
    = usersSlice.actions;
export default usersSlice.reducer;
```

### Saga File{.col-span-2}

```
import {PayloadAction} from "@reduxjs/toolkit";
import axios, {AxiosResponse} from "axios";
import {all, fork, put, takeLatest} from "redux-saga/effects";
import {getUserErrorAction, getUserSuccessAction} from "../slice/UserSlice";
import {GET_USER_BY_ID, UserType} from "../types/UserTypes";

// Generator function
function* getUserSaga({payload: id}: PayloadAction<string>) {
    try {
        // You can also export the axios call as a function.
        const response: AxiosResponse<UserType> = yield axios.get(`your-server-url:port/api/users/${id}`);
        yield put(getUserSuccessAction(response.data));
    } catch (error) {
        // @ts-ignore
        yield put(getUserErrorAction(error.toString));
    }
}

// Generator function
export function* watchGetUser() {
    yield takeLatest(GET_USER_BY_ID, getUserSaga);
}

export function* UserSaga() {
    yield all([
        fork(watchGetUser)
    ])
}
```

### Setup Root Reducers

```
import {combineReducers} from "redux";
import {usersSlice} from "./slice/UserSlice";

const rootReducers = combineReducers({
    users: usersSlice.reducer
});

export default rootReducers;
```

### Root State Type

```
import {UserState} from "./types/UserTypes";

export type StateType = {
    users: UserState;
};
```

### Setup Store

```
import createSagaMiddleware from "@redux-saga/core";
import {configureStore} from "@reduxjs/toolkit";
import rootReducers from "./rootReducers";
import rootSaga from "./rootSaga";

const sagaMiddleware = createSagaMiddleware();

const store = configureStore({
    reducer: rootReducers,
    middleware: [sagaMiddleware],
});

sagaMiddleware.run(rootSaga);

export default store;
```

### Import Index

```
import React from 'react';
import ReactDOM from 'react-dom/client';
import reportWebVitals from './reportWebVitals';
import App from "./App";
import {Provider} from "react-redux";
import store from "./Redux/store";

const root = ReactDOM.createRoot(
    document.getElementById('root') as HTMLElement
);
root.render(
    <React.StrictMode>
        <Provider store={store}>
            <App/>
        </Provider>
    </React.StrictMode>
);
```
