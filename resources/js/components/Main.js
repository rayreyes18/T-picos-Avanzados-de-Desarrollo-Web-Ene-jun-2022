import React, { Component } from "react";
import ReactDOM from "react-dom";
import Navigation from "./Navigation";
import LoginForm from "./LoginForm";
import Home from "./Home";
import Register from "./Register";
import HomeUser from "./HomeUser";
import CBooks from "./CBooks";
import CBookstores from "./CBookstores";
import SBooks from "./SBooks";
import SBookstore from "./SBookstore";
import SUsers from "./SUsers";
import UBooks from "./UBooks";
import DBooks from "./DBooks";
import UBookstores from "./UBookstores";
import DBookstore from "./DBookstore";
import Index from "./Index";
import CardBooks from "./CardBooks";
import BookScreen from "./BookScreen";
import CReviews from "./CReviews"
import SReviews from "./SReviews"
import SComments from "./SComments"
import CComments from "./CComments" 
import BookScreens from "./BookScreens";
import CardBookstores from "./CardBookstores";
import VBooks from "./VBooks";
import VBookstores from "./VBookstores";

import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function Main() {
    return (
        <Router>
            <main>
                <Navigation />
                <Routes>
                <Route path="/Final/public/" exact element={<Index/>}/>
                    <Route path="/Final/public/Home" element={<Home/>}/>
                    <Route path="/Final/public/LoginForm" element={<LoginForm/>}/>
                    <Route path="/Final/public/Register" element={<Register/>}/>
                    <Route path="/Final/public/HomeUser" element={<HomeUser/>}/>

                    <Route path="/Final/public/CBooks" element={<CBooks/>}/>
                    <Route path="/Final/public/CBookstores" element={<CBookstores/>}/>
                    <Route path="/Final/public/SBooks" element={<SBooks/>}/>
                    <Route path="/Final/public/SBookstore" element={<SBookstore/>}/>
                    <Route path="/Final/public/SUsers" element={<SUsers/>}/>
                    <Route path="/Final/public/UBooks" element={<UBooks/>}/>
                    <Route path="/Final/public/DBooks" element={<DBooks/>}/>
                    <Route path="/Final/public/UBookstores" element={<UBookstores/>}/>
                    <Route path="/Final/public/DBookstore" element={<DBookstore/>}/> 
                    <Route path="/Final/public/CardBooks" element={<CardBooks/>}/> 
                    <Route path="/Final/public/CardBookstores" element={<CardBookstores/>}/> 

                    <Route path="/Final/public/BookScreen" element={<BookScreen/>}/> 
                    <Route path="/Final/public/BookScreens" element={<BookScreens/>}/> 
                    <Route path="/Final/public/CReviews" element={<CReviews/>}/>
                    <Route path="/Final/public/SReviews" element={<SReviews/>}/>
                    <Route path="/Final/public/CComments" element={<CComments/>}/>
                    <Route path="/Final/public/SComments" element={<SComments/>}/>

                    <Route path="/Final/public/VBooks" element={<VBooks/>}/>
                    <Route path="/Final/public/VBookstores" element={<VBookstores/>}/>

                </Routes>
            </main>
        </Router>
    );
}
export default Main;
if (document.getElementById("main")) {
    ReactDOM.render(<Main />, document.getElementById("main"));
}
