import Image from "next/image";
import { Inter } from "next/font/google";
import React from "react";
import { Box, Button, Link, Menu, MenuItem } from '@mui/material'
import { useTheme } from "@mui/material/styles";
import styles from "@/styles/MainHeader.module.css";
import AuthService from "@/services/auth.service";
const inter = Inter({ subsets: ["latin"] });

export default function MainHeader () {
  const [anchorEl, setAnchorEl] = React.useState<null | HTMLElement>(null);
  const open = Boolean(anchorEl);
  const handleClick = (event: React.MouseEvent<HTMLButtonElement>) => {
    setAnchorEl(event.currentTarget);
  };
  const handleClose = () => {
    setAnchorEl(null);
  };

// Need to verify we have a JWT with a username, immediately go back to login page if we don't.
// This is faster than verifying an active login since it doesn't hit the API at all
  const username = AuthService.getCurrentUsername();
  if (username === "") {
    alert("You do not appear to be logged in.\n Redirecting to login page.");
    window.location.replace("/login");
  }

  const theme = useTheme();

  return (
    <Box className={styles["main-header"]}>
      <Image
        src={"logo-vrt1.png"}
        alt="Lasagna Love logo"
        width={90}
        height={79}
        className="logo"
      />
      <Button
        id="basic-button"
        aria-controls={open ? 'basic-menu' : undefined}
        aria-haspopup="true"
        aria-expanded={open ? 'true' : undefined}
        onClick={handleClick}
      >
        {username}
      </Button>
      <Menu
        id="basic-menu"
        anchorEl={anchorEl}
        open={open}
        onClose={handleClose}
        MenuListProps={{
          'aria-labelledby': 'basic-button',
        }}
      >
        <MenuItem onClick={handleClose}>
          <Link href="/profile">Profile</Link>
        </MenuItem>
        <MenuItem onClick={handleClose}>
          <Link href="/logout">Logout</Link>
        </MenuItem>
      </Menu>
    </Box>
  );
}