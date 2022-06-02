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

const BookScreen = (props) => {
    const {id} = useParams()

    const [showErr, setShowErr] = useState(false);
    const [showSucc, setShowSucc] = useState(false);

    //DATOS PARA MOSTRAR FUNCION
    const [book, setBook] = useState({ 
         id: '',
        Tittle: '',
        Genre: '',
        Editorial: '',
        Price: '',
        Author: '',
        Reading_age: '',
        Format: '',
        Score: '',
        Image: '',
        user_id: '',
        bookstore_id: '' 
});
        useEffect(() => {
            (async () => {
            const response = await axios.get('http://localhost/Final/public/api/books', {
            params: {
                id: id,
                Tittle: Tittle,
                Genre: Genre,
                Editorial: Editorial,
                Price: Price,
                Author: Author,
                Reading_age: Reading_age,
                Format: Format,
                Score: Score,
                Image: Image,
                user_id: user_id,
                bookstore_id: bookstore_id
            }   
              })
              .then(response => {
                setBook(response.data);
                /* (response => {
                    setBook(prevState => ({
                        ...prevState,
                        id: response.data[0].id,
                        Tittle: response.data[0].Tittle,
                        Genre: response.data[0].Genre,
                        Editorial: response.data[0].Editorial,
                        Price: response.data[0].Price,
                        Author: response.data[0].Author,
                        Reading_age: response.data[0].Reading_age,
                        Format: response.data[0].Format,
                        Score: response.data[0].Score,
                        Image: response.data[0].Image,
                        user_id: response.data[0].user_id,
                        bookstore_id: response.data[0].bookstore_id
                    })) */
                })
            })();
        }, []);

                return (
            <Container fluid>
                <Card className="m-5" style={{ width: '70rem' }}>
                {/* <Card.Img variant="left" src={show.poster}/> */}
                    <Card.Body>
                        
                        <Card.Title>{book.Tittle}</Card.Title>
                        <Card.Text>
                            {book.Genre}
                        </Card.Text>
                        <Card.Text>
                            {book.Editorial}
                        </Card.Text>
                        <Card.Text>
                            {book.Price}
                        </Card.Text>
                        <Card.Text>
                            {book.Author}
                        </Card.Text>
                        <Card.Text>
                            {book.Reading_age}
                        </Card.Text>
                        <Card.Text>
                            {book.Format}
                        </Card.Text>
                        <Card.Text>
                            {book.Review}
                        </Card.Text>
                        <Card.Text>
                            {book.Score}
                        </Card.Text>
                        <Card.Text>
                            {book.Image}
                        </Card.Text>
                        <Card.Text>
                            {book.user_id}
                        </Card.Text>
                        <Card.Text>
                            {book.bookstore_id}
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
export default BookScreen;
