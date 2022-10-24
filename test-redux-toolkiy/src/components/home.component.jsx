import {useDispatch, useSelector} from "react-redux";
import {Button} from "@mui/material";
import {increaseNumber, setStatusTrue, setValue} from "../store/number/numberSlice";

const Home = () => {
    const number = useSelector(state => state.number.currentNumber);
    const value = useSelector(state => state.number.value);

    const dispatch = useDispatch();
    const handleOnClick = () => {
        dispatch(increaseNumber())
    }

    const handleOnClickValue = () => {
        dispatch(setValue("Hai"));
    }


    return (
        <>
            <h1>{number}</h1>
            <h1>Value : {value}</h1>
            <Button variant="contained" onClick={handleOnClick}>
                Increase
            </Button>
            <Button variant="contained" onClick={handleOnClickValue}>
                Update Value to HAI
            </Button>

        </>
    )

}

export default Home;