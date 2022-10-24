import {combineReducers} from "@reduxjs/toolkit";
import {numberSlice} from "./number/numberSlice";

const rootReducer = combineReducers({
    number: numberSlice.reducer
})

export default rootReducer;