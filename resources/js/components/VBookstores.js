import React,  {useState, useEffect } from 'react';
import { Card, Button, Container, Image, Div, Row } from 'react-bootstrap'
import CardBookstores from "./CardBookstores"
import { Link } from 'react-router-dom'


const VBookstores = () => {
    return(
        <Container>
        <br></br>
        <br></br>
        <Link to="/Final/public/HomeUser"  className='btn btn-primary text-white '>Regresar</Link>
            <h3  align="center" className="mt-5">En esta sección puedes encontrar las librerías existentes</h3>
                <CardBookstores/>
        </Container>
    )
}

export default VBookstores;