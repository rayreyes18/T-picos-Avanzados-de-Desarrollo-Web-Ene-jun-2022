import React,  {useState, useEffect } from 'react';
import { Card, Button, Container, Image, Div, Row} from 'react-bootstrap'
import CardBooks from "./CardBooks"
import { Link } from 'react-router-dom'

const VBooks = () => {
    return(
        <Container>
        <br></br>
        <br></br>
        <Link to="/Final/public/HomeUser"  className='btn btn-primary text-white '>Regresar</Link>
        
            <h3  align="center" className="mt-5">En esta sección puedes encontrar los libros existentes</h3>
                <CardBooks/>
        </Container>
    )
}

export default VBooks;