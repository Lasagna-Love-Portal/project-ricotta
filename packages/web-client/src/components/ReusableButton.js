import React from "react";
import { Button } from "@mui/material";

const ReusableButton = (props) => {
  return (
    <Button
      variant={props.buttonVariant}
      color={props.buttonColor}
      style={props.buttonStyle}
    >
      {props.buttonText}
    </Button>
  );
};
export default ReusableButton;
