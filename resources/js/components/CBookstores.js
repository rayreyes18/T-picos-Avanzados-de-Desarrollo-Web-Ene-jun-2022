import React, { useState, useEffect } from 'react';
import { Form, Button, Container, img } from 'react-bootstrap';
import Axios from 'axios';
import Toast from 'react-bootstrap/Toast'
import Row from 'react-bootstrap/Row';
import { Link, useNavigate } from "react-router-dom";


const CBookstores = () => {
    
    const [data, setData] = useState({
        id: '',
        Name: '',
        Mandated: '',
        Address: '',
        City: '',
        Phone: '',
        Mail: '',
        Web: '',
        Review: '',
        Image: '',
        user_id: ''
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
        const formDatax = new FormData ()
        formDatax.append('id', data.id)
        formDatax.append('Name', data.Name)
        formDatax.append('Mandated', data.Mandated)
        formDatax.append('Address', data.Address)
        formDatax.append('City', data.City)
        formDatax.append('Phone', data.Phone)
        formDatax.append('Mail', data.Mail)
        formDatax.append('Web', data.Web)
        formDatax.append('Review', data.Review)
        formDatax.append('Image', data.Image)
        formDatax.append('user_id', data.user_id)

        axios.post('http://localhost/Final/public/api/bookstoreStore', formDatax,{ 

            params:{
                id: '',
                Name: '',
                Mandated: '',
                Address: '',
                City: '',
                Phone: '',
                Mail: '',
                Web: '',
                Review: '',
                Image: '',
                user_id: '',
            },
        }   
        ) .then(function (response) {
            console.log(response);
            alert("Insertado correctamente");
        } 
        )
          .catch(function (error) {
            console.log(error);
            alert("No insertado");
        });}
       
    return (
        <Container>
            <Form onSubmit={handleSubmit}>
                <Form.Group className="mb-3">
                    <h3   align= "center">Agregar una librería:</h3>
                    <br />
                    <br />
                    <h4   align= "center">Favor de completar los campos que se solicitan a continuación.</h4>
                        <br />
                        <br />
                    <Form.Label>Id de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="id de la librería" name="id" value={data.id} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Nombre de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Nombre de la librería" name="Name" value={data.Name} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Encargado de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Nombre del encargado" name="Mandated" value={data.Mandated} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Dirreción de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Dirección de la librería" name="Address" value={data.Address} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Ciudad de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Cuidad de la librería" name="City" value={data.City} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Teléfono de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Teléfono de la librería" name="Phone" value={data.Phone} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Correo electrónico de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Correo electrónico de la librería" name="Mail" value={data.Mail} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Página web de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Página web de la librería" name="Web" value={data.Web} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Reseña de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Reseña de la librería" name="Review" value={data.Review} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Imagen de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Imagen de la librería" name="Image" value={data.Image} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Id del administrador:</Form.Label>
                    <Form.Control type="text" placeholder="Id del administrador" name="user_id" value={data.user_id} onChange={handleInputChange} />
                </Form.Group>
                <Button variant="primary" type="submit" onClick={handleSubmit}>
                    Guardar cambios
                </Button>
                &nbsp;
                            &nbsp;
                <Link to="/Final/public/SBookstore"  className='btn btn-danger  text-white'>Salir</Link>
            </Form>
        </Container> 
    );
}

export default CBookstores;