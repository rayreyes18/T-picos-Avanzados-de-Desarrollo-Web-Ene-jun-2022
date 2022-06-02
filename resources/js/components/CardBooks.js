import React,  {useState, useEffect } from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Axios from 'axios'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import { Link, useLocation } from 'react-router-dom';
import ReactDOM from 'react-dom';

import { useNavigate, useParams } from 'react-router';

const CardBooks = (props) => {
        
    const [data, setData] = useState([])

    const location = useLocation()
        useEffect(() => {
            (async () => {
                const response = await Axios({
                    method: 'get',
                    url:'http://localhost/Final/public/api/books'
                }).then(response => {
                setData(response.data);
                    console.log('response book: ');
                    console.log(response.data);
                })
            })();
        },[]);

    let navigate = useNavigate();
        const handleClick = (id) => async (e) =>{
            navigate(`/Final/public/BookScreen/${id}`); 
            console.log(id);

        }

    return(
        <Container >
            <Row sm={1} md={2} lg={3}>
                {data.map(dataItem =>(
                    <Card style={{ width: '27rem' }} className="m-5" border="dark" xl={1} key={dataItem.id}>
                        <Card.Img variant="top" src={dataItem.Image} />
                        <Card.Body>
                            <Card.Title>{dataItem.Tittle}</Card.Title>
                            <div className="text-center">
                            <Card.Text>Genero: {dataItem.Genre}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Editorial{dataItem.Editorial}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Precio: {dataItem.Price}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Autor: {dataItem.Author}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Edad de recomendada: {dataItem.Reading_age}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Formato: {dataItem.Format}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Reseña: {dataItem.Review}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Calificación: {dataItem.Score}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Librería: {dataItem.bookstore_id}</Card.Text>
                            <div className="text-center"></div>
                            <Link to="/Final/public/SReviews"  className='btn btn-warning btn-lg text-white '>Comentarios</Link>
                                    
                                </div>
                        </Card.Body>
                    </Card>
                ))}
            </Row>
        </Container>
);
}

export default CardBooks;