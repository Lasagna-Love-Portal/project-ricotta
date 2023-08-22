import Image from 'next/image';
import Link from 'next/link';

export default function HeaderLogo () {
    return(
        <Link href="/" className="-m-1.5 p-1.5">
          <span className="sr-only">Lasagna Love</span>
          <Image
            src={"/logo-vrt1.png"}
            alt="Lasagna Love logo"
            width={90}
            height={79}
            className="logo"
          />
        </Link>
    )
}