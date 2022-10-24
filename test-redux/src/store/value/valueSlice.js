import { createSlice } from '@reduxjs/toolkit'

const initialState = {
    number: 1,
    value: "GIA TRI RONG_SLICE"
}

export const valueSlice = createSlice({
    name: 'valueSlice',
    initialState,
    reducers: {
        increaseNumberByOne: (state) => {
            state.number = state.number + 1;
        },
        updateValue: (state, action) => {
            state.value = action.payload;
        }
    },
})

const {reducer, actions} = valueSlice;

// Action creators are generated for each case reducer function
export const { increaseNumberByOne, updateValue } = actions;

export default valueSlice.reducer