import {Button} from "@mui/material";
import {useDispatch, useSelector} from "react-redux";
import {increaseNumberByOne, updateValue} from "./store/value/valueSlice";

const Home = () => {
    const value = useSelector(state => state.value);
    const dispatch = useDispatch();

    const handleOnClickIncrease = () => {
        dispatch(increaseNumberByOne());
    }

    const handleOnClickChangeName = (name) => {
        dispatch(updateValue(name));
    }
    return (
        <>
            <h1>{value.number}</h1>
            <h1>{value.value}</h1>
            <Button variant="contained" onClick={handleOnClickIncrease}>TANG GIA TRI +1</Button>
            <Button variant="contained" onClick={() => handleOnClickChangeName("Hai")}>THAY DOI => "HAI"</Button>

        </>
    )
}

export default Home;