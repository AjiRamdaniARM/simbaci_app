"use client";
import DashboardUmum from "./home/DashboardUmum";
import type { AppProps } from 'next/app';
import Link from 'next/link';
export default function Home() {
  return (
    <main className="w-full">
      <nav className="flex px-10 py-3 justify-between items-center shadow-md">
        <div className="logo w-[250px] h-auto flex" >
          <img  src="assets/logo1.png" alt="lokoeswka" />
          <img src="assets/logo2.png" alt="logoSimboci" />
        </div>
        <div className="button">
        <Link href="/dashboard">
          <button className="bg-green-500 px-10 py-3 rounded-full text-white font-bold">Login/Sign Up</button>
        </Link>
        </div>
      </nav>
      <div className="content px-44 py-10">
        <DashboardUmum />
      </div>
    </main>
  );
}
