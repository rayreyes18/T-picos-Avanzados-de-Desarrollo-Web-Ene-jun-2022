import React, {useState, useEffect} from 'react';
import { Form, Button, Container, Row, img } from 'react-bootstrap';
import Toast from 'react-bootstrap/Toast';
import { useNavigate, useParams, Link, useHistory } from 'react-router-dom';
import Axios from 'axios';

function UBookstores () {
    const [data, setData] = useState({
        id: '',
        Mandated: '',
       Phone:' ',
        Review: ''
    })

    const handleInputChange = (event) => {
        // console.log(event.target.name)
        // console.log(event.target.value)
        setData({
            ...data,
            [event.target.name]: event.target.value
        })
    }

    const handleSubmit = async (e) => {
        e.preventDefault()
        let formDatax = new FormData();
        formDatax.append('id', data.id)
        formDatax.append('Mandated', data.Mandated)
        formDatax.append('Phone', data.Phone)
        formDatax.append('Review', data.Review)

        axios.post('http://localhost/Final/public/api/bookstoreUpdate', 
        formDatax, 
        {

                params:{
                    id: '',
                    Mandated: '',
                Phone: '',
                    Review: '',
                },
        } 
        ).then(function (response) {
            console.log(response);
            alert("Actualizado correctamente");
            //navigate('/')
        } 
        ).catch(function (error) {
            console.log(error);
            alert("No actualizado");
        });
    }
    return (
        <Container>
                    <Form onSubmit={handleSubmit}>
                        <Form.Group className="mb-3">
                            <h3  align= "center">Editar una librería:</h3>
                            <br />
                            <br />
                            <h4  align= "center"> Favor de cambiar los campos que se solicitan a continuación.</h4>
                                <br />
                                <br />
                                <Form.Label>Id de la librería:</Form.Label>
                            <Form.Control type="text" placeholder="id librería" name="id" value={data.id} onChange={handleInputChange} />                    
                        </Form.Group>
        
                        <Form.Group className="mb-3">
                    <Form.Label>Nombre del encargado de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Nombre del encargado" name="Mandated" value={data.Mandated} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Teléfono de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Teléfono de la librería" name="Phone" value={data.Phone} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Reseña de la librería:</Form.Label>
                    <Form.Control type="text" placeholder="Reseña del libro" name="Review" value={data.Review} onChange={handleInputChange} />
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

export default UBookstores;