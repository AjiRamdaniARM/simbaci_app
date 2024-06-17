export default function Header () {
    return (
        <header>
            <div className="w-full">
            <div id="content" className="px-8 bg-transparent flex-grow flex-shrink flex-auto overflow-y-scroll">
            <div id="info" className="border-b  w-full   h-36">
                <div className="flex  justify-between p-20  flex-grow items-center h-24">
                    <div className="flex relative ml-96">
                     <img src="assets/logo2.png" alt="" />
                    </div>
                    <div className="flex">
                        <ul className="flex list-reset text-black">
                            <li className="px-4">
                                <span className="text-sm">
                                 <img src="assets/notif.png" alt="" />
                                </span>
                            </li>
                            <li className=" px-4">
                                <span className="text-sm">
                                <img src="assets/profile.png" alt="" />
                                </span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
            </div>
        </header>
    )
}