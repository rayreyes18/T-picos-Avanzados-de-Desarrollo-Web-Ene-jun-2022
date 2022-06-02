import React,  {useState, useEffect } from 'react';
import Card from 'react-bootstrap/Card';
import Button from 'react-bootstrap/Button';
import Axios from 'axios'
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import { Link, useLocation } from 'react-router-dom';
import ReactDOM from 'react-dom';

import { useNavigate, useParams } from 'react-router';

const CardBookstores = (props) => {
        
    const [data, setData] = useState([])

    const location = useLocation()
        useEffect(() => {
            (async () => {
                const response = await Axios({
                    method: 'get',
                    url:'http://localhost/Final/public/api/bookstores'
                }).then(response => {
                setData(response.data);
                    console.log('response bookstore: ');
                    console.log(response.data);
                })
            })();
        },[]);

    let navigate = useNavigate();
        const handleClick = (id) => async (e) =>{
            navigate(`/Final/public/BookScreens/${id}`); 
            console.log(id);

        }

    return(
        <Container >
            <Row sm={1} md={2} lg={3}>
                {data.map(dataItem =>(
                    <Card style={{ width: '27rem' }} className="m-5" border="dark" xl={1} key={dataItem.id}>
                        <Card.Img variant="top" src={dataItem.Image} />
                        <Card.Body>
                            <Card.Title>{dataItem.Name}</Card.Title>
                            <div className="text-center">
                            <Card.Text>Encargado: {dataItem.Mandated}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Dirección: {dataItem.Address}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Ciudad: {dataItem.City}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Telefono: {dataItem.Phone}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Mail: {dataItem.Mail}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Página Web: {dataItem.Web}</Card.Text>
                            <div className="text-center"></div>
                            <Card.Text>Reseña: {dataItem.Review}</Card.Text>
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

export default CardBookstores;