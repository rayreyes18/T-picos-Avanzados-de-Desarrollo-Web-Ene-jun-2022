import React,  {useState, useEffect } from 'react';
import { Card, Button, Container, Image, Div, Row , Navbar, Nav } from 'react-bootstrap'
import { Link, useLocation } from 'react-router-dom';

import axios from 'axios'

import { useParams, Redirect } from 'react-router-dom';
import CardBooks from "./CardBooks"
import CardBookstores from "./CardBookstores";


/* import CardShows from "./CardShows" */

const Index = () => {
    return(
        <Container>


<div Name = "link1">
<img src="https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285762846_5089662751070617_3476179142668168692_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeEY_2diooWgTLs0wG-51FXb1CAmFfuyh4nUICYV-7KHiR6eaQhHM2mr44HdkVqTEFXOLxzeQhKu-Tphwq25wwuQ&_nc_ohc=lE8DA-3rJb8AX81tLLA&tn=occIF7PSwqbk5dA9&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT-DVNKSUaQTE16AJRx_uY0-DYDu_5MPHjec9yE3poa5vg&oe=629E6FB8"

 width="500" height="auto"
                    class="img-fluid d-block mx-auto"></img>
            </div>

<div> 
                <h3 align="center" class="mx-5" >El blog "Ciudad de los libros", te permitirá conocer acerca de las librerías cercanas y los libros que se encuentran en  tendencia. 

¿Te ha pasado alguna vez que no sabes qué leer?

Este blog está hecho para ti , encuentra diversas reseñas las cuales te darán a conocer  grandes historias.</h3></div> <br></br> <br></br>
              

              
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
            <div class="carousel-indicators"> <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
             <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button> 
             <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button> 
             </div> <div class="carousel-inner"> 
             <div class="carousel-item active"> 
             <img src="https://thumbs2.imgbox.com/67/a6/VEmC2x1j_t.jpeg" class="d-block w-100" /> 
             <div class="carousel-caption d-none d-md-block"> 
             
               </div> 
               </div> <div class="carousel-item"> 
               <img src="https://thumbs2.imgbox.com/48/a0/gotWuJE7_t.jpeg" class="d-block w-100" /> 
               <div class="carousel-caption d-none d-md-block"> 
              
                 </div> 
                 </div> 
                 <div class="carousel-item">
                  <img src="https://thumbs2.imgbox.com/f4/0f/loUtkO4S_t.jpeg" class="d-block w-100" /> 
                  <div class="carousel-caption d-none d-md-block"> 
                  
                  </div> 
                  </div> 
                  </div> 
                  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev"> 
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="visually-hidden">Previous</span>
                   </button> 
                   <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="visually-hidden">Next</span>
                     </button> 
                     </div>
<br></br>
<br></br>
                     <h3 align="center" class="mx-5" > La lectura es una de las piezas fundamentales para la adquisición de conocimiento. Ella nos acompañará a lo largo de nuestras vidas y permitirá que adquiramos conocimiento,  que entendamos el mundo y todo lo que nos rodea. También que podamos viajar a cualquier sitio sin desplazarnos a ningún lugar o que podamos ser la persona que queramos ser por un momento. Leer nos abre las puertas del conocimiento y da alas a nuestra inspiración e imaginación.</h3>
                     <br></br>
<br></br>


<Nav className="justify-content-center" activeKey="/home">

  <Nav.Item>
    <Nav.Link href="https://www.facebook.com/gama.gonzalezguerrero" style={{color: 'black'}}>Contacto Gamaliel</Nav.Link>
  </Nav.Item>
  <Nav.Item>
    <Nav.Link href="https://www.facebook.com/carolina.lugoparga.5" style={{color: 'black'}}>Contacto Carolina</Nav.Link>
  </Nav.Item>
  <Nav.Item>
  <Nav.Link href= "https://www.facebook.com/raymundo.reyessouza1" style={{color: 'black'}}>Contacto Raymundo </Nav.Link>
  </Nav.Item>
</Nav>
<br />
<br />
<br />
<br />


        </Container>

        
    )
}

export default Index;