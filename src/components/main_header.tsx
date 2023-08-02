import Image from "next/image";
import Link from 'next/link'
import { Inter } from "next/font/google";
import React, { useState } from "react";
import { Dialog } from '@headlessui/react'
import { Bars3Icon, XMarkIcon } from '@heroicons/react/24/outline'
import styles from "@/styles/MainHeader.module.css";
import AuthService from "@/services/auth.service";
const inter = Inter({ subsets: ["latin"] });

const navigation = [
  { name: 'Home', href: '/portal/dashboard' },
  { name: 'Matches', href: '/portal/matches' },
  { name: 'Resources', href: '/portal/resources' },
  { name: 'Account', href: '/portal/account' },
]

export default function MainHeader () {
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // const [anchorEl, setAnchorEl] = React.useState<null | HTMLElement>(null);
  // const open = Boolean(anchorEl);
  // const handleClick = (event: React.MouseEvent<HTMLButtonElement>) => {
  //   setAnchorEl(event.currentTarget);
  // };
  // const handleClose = () => {
  //   setAnchorEl(null);
  // };

// Need to verify we have a JWT with the user's email address, immediately go back to login page if we don't.
// This is faster than verifying an active login since it doesn't hit the API at all
  const userEmail = AuthService.getCurrentUserEmail();
  if (userEmail === "") {
    alert("You do not appear to be logged in.\n Redirecting to login page.");
    window.location.replace("/login");
  }


  return (
    <header className="bg-[#fffaf7]">
      <nav className="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Global">
        <a href="#" className="-m-1.5 p-1.5">
          <span className="sr-only">Lasagna Love</span>
          <Image
                src={"/logo-vrt1.png"}
                alt="Lasagna Love logo"
                width={90}
                height={79}
                className="logo"
              />
        </a>
        <div className="flex lg:hidden">
          <button
            type="button"
            className="-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700"
            onClick={() => setMobileMenuOpen(true)}
          >
            <span className="sr-only">Open main menu</span>
            <Bars3Icon className="h-6 w-6" aria-hidden="true" />
          </button>
        </div>
        <div className="hidden lg:flex lg:gap-x-12">
          {navigation.map((item) => (
            <Link href={item.href} className="text-sm font-semibold leading-6 text-gray-900">{item.name}</Link>
          ))}
        </div>
      </nav>
      <Dialog as="div" className="lg:hidden" open={mobileMenuOpen} onClose={setMobileMenuOpen}>
        <div className="fixed inset-0 z-10" />
        <Dialog.Panel className="fixed inset-y-0 right-0 z-10 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10">
          <div className="flex items-center justify-between">
            <a href="#" className="-m-1.5 p-1.5">
              <span className="sr-only">Lasagna Love</span>
              <Image
                src={"logo-vrt1.png"}
                alt="Lasagna Love logo"
                width={90}
                height={79}
                className="logo"
              />
            </a>
            <button
              type="button"
              className="-m-2.5 rounded-md p-2.5 text-gray-700"
              onClick={() => setMobileMenuOpen(false)}
            >
              <span className="sr-only">Close menu</span>
              <XMarkIcon className="h-6 w-6" aria-hidden="true" />
            </button>
          </div>
          <div className="mt-6 flow-root">
            <div className="-my-6 divide-y divide-gray-500/10">
              <div className="space-y-2 py-6">
                {navigation.map((item) => (
                  <Link href={item.href} className="text-sm font-semibold leading-6 text-gray-900">{item.name}</Link>
                ))}
              </div>
            </div>
          </div>
        </Dialog.Panel>
      </Dialog>
    </header>
  )


  // return (
  //   <Box className={styles["main-header"]}>
  //     <Image
  //       src={"logo-vrt1.png"}
  //       alt="Lasagna Love logo"
  //       width={90}
  //       height={79}
  //       className="logo"
  //     />
  //     <Button
  //       id="basic-button"
  //       aria-controls={open ? 'basic-menu' : undefined}
  //       aria-haspopup="true"
  //       aria-expanded={open ? 'true' : undefined}
  //       onClick={handleClick}
  //     >
  //       {userEmail}
  //     </Button>
  //     <Menu
  //       id="basic-menu"
  //       anchorEl={anchorEl}
  //       open={open}
  //       onClose={handleClose}
  //       MenuListProps={{
  //         'aria-labelledby': 'basic-button',
  //       }}
  //     >
  //       <MenuItem onClick={handleClose}>
  //         <Link href="/profile">Profile</Link>
  //       </MenuItem>
  //       <MenuItem onClick={handleClose}>
  //         <Link href="/logout">Logout</Link>
  //       </MenuItem>
  //     </Menu>
  //   </Box>
  // );
}