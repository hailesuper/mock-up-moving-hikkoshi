import {combineReducers} from "@reduxjs/toolkit";
import {valueSlice} from "./value/valueSlice";

const rootReducer = combineReducers({
    // number: numberSlice.reducer
    value: valueSlice.reducer,
})

export default rootReducer;