export default function Sidebar() {
    return(
        <body className="">
        <span
          className="absolute text-white text-4xl top-5 left-4 cursor-pointer"
          
        >
          <i className="bi bi-filter-left px-2 bg-[#E4FBE7] rounded-md"></i>
        </span>
        <div
          className="sidebar fixed top-0 bottom-0 lg:left-0 p-5 w-[368px]  overflow-y-auto text-center bg-[#E4FBE7]"
        >
          <div className="text-gray-100 text-xl">
            <div className="p-2.5 mt-1 flex items-center">
                <img src="assets/logo1.png" />
              <i
                className="bi bi-x cursor-pointer ml-28 lg:hidden"
              ></i>
            </div>
          </div>
          <div
            className="p-2.5 flex items-center rounded-md px-4 duration-300 cursor-pointer bg-[#EB763C] text-white"
          >
            <i className="bi bi-house-door-fill"></i>
            <span className="text-[15px] ml-4 text-white font-bold">Dashboard</span>
          </div>
          <div
            className="p-2.5 flex items-center rounded-md px-4 duration-300 cursor-pointer text-white"
          >
            <i className="bi bi-bookmark-fill"></i>
            <span className="text-[15px] ml-4 text-[#ABB5BA] font-bold">Papan Peringkat</span>
          </div>

        </div>
    
     
      </body>
    )
}