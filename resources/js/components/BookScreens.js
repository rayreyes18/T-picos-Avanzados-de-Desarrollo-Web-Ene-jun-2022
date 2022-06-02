import React, {useState, useEffect} from 'react';
import Form from 'react-bootstrap/Form';
import Button from 'react-bootstrap/Button';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Alert from 'react-bootstrap/Alert';
import axios from 'axios';
import { useNavigate, useParams } from 'react-router';
import Card from 'react-bootstrap/Card';
import { Link, useLocation } from 'react-router-dom';

const BookScreens = (props) => {
    const {id} = useParams()

    const [showErr, setShowErr] = useState(false);
    const [showSucc, setShowSucc] = useState(false);

    //DATOS PARA MOSTRAR FUNCION
    const [bookstore, setBookstore] = useState({ 
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
});
        useEffect(() => {
            (async () => {
            const response = await axios.get('http://localhost/Final/public/api/bookstores', {
            params: {
                id: id,
                Name: Name,
                Mandated: Mandated,
                Address: Address,
                City: City,
                Phone: Phone,
                Mail: Mail,
                Web: Web,
                Review: Review,
                Image: Image,
                user_id: user_id,
            }   
              })
              .then(response => {
                setBook(response.data);
                })
            })();
        }, []);

                return (
            <Container fluid>
                <Card className="m-5" style={{ width: '70rem' }}>
                {/* <Card.Img variant="left" src={show.poster}/> */}
                    <Card.Body>
                        
                        <Card.Title>{book.Name}</Card.Title>
                        <Card.Text>
                            {book.Mandated}
                        </Card.Text>
                        <Card.Text>
                            {book.Address}
                        </Card.Text>
                        <Card.Text>
                            {book.Price}
                        </Card.Text>
                        <Card.Text>
                            {book.City}
                        </Card.Text>
                        <Card.Text>
                            {book.Phone}
                        </Card.Text>
                        <Card.Text>
                            {book.Mail}
                        </Card.Text>
                        <Card.Text>
                            {book.Web}
                        </Card.Text>
                        <Card.Text>
                            {book.Review}
                        </Card.Text>
                        <Card.Text>
                            {book.Image}
                        </Card.Text>
                        <Card.Text>
                            {book.user_id}
                        </Card.Text>
                        

                        {/* <Form  onSubmit={handleSubmit}>
                            <Form.Group>
                                    <Form.Label>Boletos:</Form.Label>
                                    <Form.Control type="number" name="quantity" placeholder="" onChange={handleInputChange}/>
                            </Form.Group>
                            
                            <Button variant="primary" type="submit">
                                Comprar
                            </Button>
                        </Form> */}
                    </Card.Body>
                    
                </Card>
                
            </Container>
        )    
}
export default BookScreens;
