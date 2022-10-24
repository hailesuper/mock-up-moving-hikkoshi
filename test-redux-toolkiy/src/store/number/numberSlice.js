import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    status: false,
    currentNumber: 0,
    value: ""
}

export const numberSlice = createSlice({
    name: 'numberSlice',
    initialState,
    reducers: {
        increaseNumber(state) {
            state.currentNumber = state.currentNumber + 1;
        },
        decreaseNumber(state) {
            state.currentNumber = state.currentNumber - 1;
        },
        setStatusTrue(state) {
            state.status = true;
        },
        setStatusFalse(state) {
            state.status = false;
        },
        setValue(state, action) {
            state.value = action.payload;
        }
    },
})

// Action creators are generated for each case reducer function
const {reducer, actions} = numberSlice;
export const { increaseNumber, setStatusTrue, setValue } = actions;
export default numberSlice.reducer;