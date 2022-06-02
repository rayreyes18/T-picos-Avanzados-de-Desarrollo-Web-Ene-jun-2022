import React, { useState, useEffect } from 'react';
import { Form, Button, Container, img } from 'react-bootstrap';
import Axios from 'axios';
import Toast from 'react-bootstrap/Toast'
import Row from 'react-bootstrap/Row';
import { Link, useNavigate } from "react-router-dom";

function CReviews () {

    const [data, setData] = useState({
        id: '',
        Review: '',
        user_id: '',
        book_id: ''
    });

    const handleInputChange = (event) => {
        // console.log(event.target.name)
        // console.log(event.target.value)
        setData({
            ...data,
            [event.target.name]: event.target.value
        })
    }

    //const navigate = useNavigate()

    const handleSubmit = async (e) => {
        e.preventDefault();
        const formDatax = new FormData ()
        formDatax.append('id', data.id)
        formDatax.append('Review', data.Review)
        formDatax.append('user_id', data.user_id)
        formDatax.append('book_id', data.book_id)
        

            axios.post('http://localhost/Final/public/api/bookreviewStore', formDatax,{ 

                params:{
                    id: '',
                    Review: '',
                    user_id: '',
                    book_id: '',
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
            });
    }

       
    return (
        <Container>
            <Form onSubmit={handleSubmit}>
                <Form.Group className="mb-3">
                    <br />
                    <h4  align= "center" >Favor de completar los campos que se solicitan a continuación.</h4>
                        <br />
                        <br />
                    <Form.Label>Número de reseña:</Form.Label>
                    <Form.Control type="text" placeholder="Número de reseña" name="id" value={data.id} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Reseña del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Reseña del libro" name="Review" value={data.Review} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>id de user:</Form.Label>
                    <Form.Control type="text" placeholder="Usuario que reseña" name="user_id" value={data.user_id} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>id de librerias:</Form.Label>
                    <Form.Control type="text" placeholder="Libro leído" name="book_id" value={data.book_id} onChange={handleInputChange} />
                </Form.Group>
                <Button variant="primary" type="submit" onClick={handleSubmit}>
                    Guardar cambios
                </Button>
                &nbsp;
                            &nbsp;
                <Link to="/Final/public/SReviews"  className='btn btn-danger text-white'>Salir</Link>
            </Form>
        </Container>                                    
    );
}
export default CReviews;
                                