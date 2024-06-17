import Header from "../component/header";
import Sidebar from "../component/sidebar";
import { getBsu } from "../libs/data";

const Dashboard = async () => {
    const data = await getBsu();
    return(
        <div className="block ">
            <Sidebar />
            <Header />
            <div className="ml-[368px] p-5 w-full">
                <h1 className="text-center right-44 py-10 relative font-bold nunito-sans text-2xl">
                Statistik BSU Sanggar Wuni Kreasi
                </h1>
                <div className="box-select relative mx-auto w-full flex items-center justify-center ">

                    <select name="nama_anda" id="id_anda" className="right-44 relative px-3 py-3 rounded-[10px] " style={{border:'2px solid #037847'}}>
                        <option value="nilai1"> - TAHUN 2024 - </option>
                    </select>
                    

                </div>


                <div className="grup-card">

                <div className="flex py-5 justify-start items-center gap-5">
                    <div className=" bg-[#037847] rounded-[10px] flex justify-start items-center gap-3 w-[369px] py-5">
                        <div className="icon-home">
                            <img src="assets/team.png" alt="home" />
                        </div>
                        <div className="title">
                            <h1 className="text-[#FEB95A]">Total Nasabah</h1>
                            <h2 className="text-white text-3xl font-bold">54</h2>
                        </div>                
                     </div>

                    <div className=" bg-[#037847] rounded-[10px] flex justify-start items-center gap-3 w-[369px] py-5">
                        <div className="icon-home">
                            <img src="assets/home.png" alt="home" />
                        </div>
                        <div className="title">
                            <h1 className="text-[#FEB95A]">Total Sampah Terkumpul</h1>
                            <h2 className="text-white text-3xl font-bold">203 kg</h2>
                        </div>
                    
                    </div>
                    <div className=" bg-[#037847] rounded-[10px] flex justify-start items-center gap-3 w-[369px] py-5">
                        <div className="icon-home">
                            <img src="assets/home.png" alt="home" />
                        </div>
                        <div className="title">
                            <h1 className="text-[#FEB95A]">Total Sampah Belum Dijemput</h1>
                            <h2 className="text-white text-3xl font-bold">34 kg</h2>
                        </div>
                    
                    </div>

                </div>



                <div className="flex py-5 justify-start items-center gap-5">

                {(data ?? []).map((item, index) => (
                 <div key={index}>
                   <div className=" bg-[#037847] rounded-[10px] flex justify-start p-4 items-center gap-3 w-[369px] py-5">
                        <div className="icon-home">
                            <img src="assets/money.png" className="h-[6em]" alt="home" />
                        </div>
                        <div className="title">
                            <h1 className="text-[#FEB95A]">Total Saldol</h1>
                            <h2 className="text-white text-3xl font-bold">Rp {item.Saldo}</h2>
                        </div>                
                     </div>
                </div>
                ))}
                   
                 

                    <div className=" bg-[#037847] rounded-[10px] flex justify-start items-center gap-3 w-[369px] py-5">
                        <div className="icon-home">
                            <img src="assets/sas.png" alt="home" />
                        </div>
                        <div className="title">
                            <h1 className="text-[#FEB95A]">Kontribusi Emisi Karbon</h1>
                            <h2 className="text-white text-3xl font-bold">0.21 kg CO2-eq</h2>
                        </div>
                    
                    </div>

                </div>

                </div>


                <div className="chart container">
                    <img src="assets/card.png" className="w-full" alt="" />
                </div>
                <br />

                <div className="w-[90em] bg-[#E4FBE7] px-20 py-10">
                <div className="text">
                    <h6 className="text-black font-bold">Jenis Sampah Terkumpul</h6>
                </div>
                <div className="flex justify-start items-center gap-20">
                    <div className="card-1 bg-[#037847] py-10 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/element1.png" alt=""/>
                            <div className="body">
                                <h1 className="text-white text-3xl">654 kg</h1>
                                <h2 className="text-[#FEB95A] text-[13px]">Sampah Plastik</h2>
                            </div>
                        </div>
                    </div>
                    <div className="card-1 bg-[#037847] py-9 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/13.png" alt="" />
                            <div className="body">
                                <h1 className="text-white text-3xl">876 kg</h1>
                                <h2 className="text-[#FEB95A] text-[13px]">Sampah Kaleng</h2>
                            </div>
                        </div>
                    </div>
                    <div className="card-1 bg-[#037847] py-10 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/14.png" alt="" />
                            <div className="body">
                                <h1 className="text-white text-3xl">145 kg</h1>
                                <h2 className="text-[#FEB95A]  text-[13px]">Sampah Limbah B3</h2>
                            </div>
                        </div>
                    </div>
                    
                    <div className="card-1 bg-[#037847] py-10 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/12.png" alt=""/>
                            <div className="body">
                                <h1 className="text-white text-3xl">654 kg</h1>
                                <h2 className="text-[#FEB95A] text-[13px]">Sampah Plastik</h2>
                            </div>
                        </div>
                    </div>
                    <div className="card-1 bg-[#037847] py-10 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/element1.png" alt=""/>
                            <div className="body">
                                <h1 className="text-white text-3xl">654 kg</h1>
                                <h2 className="text-[#FEB95A] text-[13px]">Sampah Plastik</h2>
                            </div>
                        </div>
                    </div>
                    <div className="card-1 bg-[#037847] py-10 px-5 rounded-[10px] relative mt-5">
                        <div className="body flex flex-col justify-start items-start relative -mt-5  ">
                            <img src="assets/element1.png" alt=""/>
                            <div className="body">
                                <h1 className="text-white text-3xl">654 kg</h1>
                                <h2 className="text-[#FEB95A] text-[13px]">Sampah Plastik</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            </div>
        </div>
    )
}

export default Dashboard;