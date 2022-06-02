import React, { useState, useEffect } from 'react';
import { Form, Button, Container, img } from 'react-bootstrap';
import Axios from 'axios';
import Toast from 'react-bootstrap/Toast'
import Row from 'react-bootstrap/Row';
import { Link, useNavigate } from "react-router-dom";

function CBooks () {

    const [data, setData] = useState({
        id: '',
        Tittle: '',
        Genre: '',
        Editorial: '',
        Price: '',
        Author: '',
        Reading_age: '',
        Format: '',
        Review: '',
        Score: '',
        Image: '',
        user_id: '',
        bookstore_id: ''
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
        formDatax.append('Tittle', data.Tittle)
        formDatax.append('Genre', data.Genre)
        formDatax.append('Editorial', data.Editorial)
        formDatax.append('Price', data.Price)
        formDatax.append('Author', data.Author)
        formDatax.append('Reading_age', data.Reading_age)
        formDatax.append('Format', data.Format)
        formDatax.append('Review', data.Review)
        formDatax.append('Score', data.Score)
        formDatax.append('Image', data.Image)
        formDatax.append('user_id', data.user_id)
        formDatax.append('bookstore_id', data.bookstore_id)
        

            axios.post('http://localhost/Final/public/api/bookStore', formDatax,{ 


                /* params:{
                    id: 3,
                    Tittle: 'Mundo magico',
                    Genre: 'Infantil',
                    Editorial: 'Nocturna',
                    Price: 100,
                    Author: 'Marcos',
                    Reading_age: 6,
                    Format: 'Pasta blanda',
                    Review: 'Muy boniyo',
                    Score: 10,
                    Image: 'No hay',
                    user_id: 1,
                    bookstore_id: 1,
                }   */   
                params:{
                    id: '',
                    Tittle: '',
                    Genre: '',
                    Editorial: '',
                    Price: '',
                    Author: '',
                    Reading_age: '',
                    Format: '',
                    Review: '',
                    Score: '',
                    Image: '',
                    user_id: '',
                    bookstore_id: '',
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
                    <h3  align= "center">Agregar un libro</h3>
                    <br />
                    <br />
                    <h4  align= "center">Favor de completar los campos que se solicitan a continuación.</h4>
                        <br />
                        <br />
                    <Form.Label>Id del libro:</Form.Label>
                    <Form.Control type="text" placeholder="id libro" name="id" value={data.id} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Titulo un libro:</Form.Label>
                    <Form.Control type="text" placeholder="Nombre libro" name="Tittle" value={data.Tittle} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Genero del libro.</Form.Label>
                    <Form.Control type="text" placeholder="Genero libro" name="Genre" value={data.Genre} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Editorial del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Editorial libro" name="Editorial" value={data.Editorial} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Precio del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Precio libro" name="Price" value={data.Price} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Autor del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Autor libro" name="Author" value={data.Author} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Edad recomendada del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Edad recomendada libro" name="Reading_age" value={data.Reading_age} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Formato del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Formato libro" name="Format" value={data.Format} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Reseña del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Reseña libro" name="Review" value={data.Review} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Puntuación del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Puntuación libro" name="Score" value={data.Score} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Image del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Imagen libro" name="Image" value={data.Image} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>id de user:</Form.Label>
                    <Form.Control type="text" placeholder="id usuario" name="user_id" value={data.user_id} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>id de librerías:</Form.Label>
                    <Form.Control type="text" placeholder="id librerías" name="bookstore_id" value={data.bookstore_id} onChange={handleInputChange} />
                </Form.Group>
                <Button variant="primary" type="submit" onClick={handleSubmit}>
                    Guardar cambios
                </Button>
                &nbsp;
                            &nbsp;
                <Link to="/Final/public/SBooks"  className='btn btn-danger  text-white'>Salir</Link>
            </Form>
        </Container>                                    
    );
}
export default CBooks;
                                