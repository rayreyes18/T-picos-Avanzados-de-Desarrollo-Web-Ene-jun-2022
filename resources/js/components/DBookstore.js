import React, { useState, useEffect } from 'react';
import { Modal, Button, Container, Alert, Form  } from 'react-bootstrap';
import Axios from 'axios';

import { Link, useNavigate } from "react-router-dom";



function DBookstore() {
    
    const [data, setData] = useState({
        id: ''
    });

    const handleInputChange = (event) => {
        // console.log(event.target.name)
        // console.log(event.target.value)
        setData({
            ...data,
            [event.target.name]: event.target.value
        })

    }

    const handleSubmit = async (e) => {
        e.preventDefault();
        let formDatax = new FormData ();
        formDatax.append('id', data.id)

        axios.post('http://localhost/Final/public/api/bookstoreDelete', formDatax, {
            params:{
                id: '',
            }, 
        }).then(function (response) {
            console.log(response);
            alert("Insertado correctamente");
        })
        .catch(function (error) {
            console.log(error);
            alert("No insertado");
            });
    }

    return (

        <Container>
            <Form onSubmit={handleSubmit}>
                <Form.Group className="mb-3">
                    <h3  align= "center">Borrar una librería:</h3>
                    <br />
                    <br />
                    <h4  align= "center">Favor de ingresar el (id) de la librería que desea eliminar</h4>
                        <br />
                        <br />
                    <Form.Label>Id de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="id de la librería" name="id" value={data.id} onChange={handleInputChange} />
                </Form.Group>
                <Button variant="primary" type="submit" onClick={handleSubmit}>
                    Guardar cambios
                </Button>
                &nbsp;
                            &nbsp;
                <Link to="/Final/public/SBookstore"  className='btn btn-danger text-white'>Salir</Link>
            </Form>
        </Container>                                     
    );
}
export default DBookstore;
