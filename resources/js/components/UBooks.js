import Axios from 'axios';
import React, {useState, useEffect} from 'react';
import { Form, Button, Container, Row, img } from 'react-bootstrap';
import Toast from 'react-bootstrap/Toast';
import { useNavigate, useParams, Link, useHistory } from 'react-router-dom';

function UBooks () {
    const [data, setData] = useState({
        id: '',
        Price: '',
       Format:' ',
        Review: '',
        //user_id: '',
        //bookstore_id:  ''
       Score: ''
    })

    /* const [Book, setBook] = useState([]) */
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
        formDatax.append('Price', data.Price)
        formDatax.append('Format', data.Format)
        formDatax.append('Review', data.Review)
    formDatax.append('Score', data.Score)

        axios.post('http://localhost/Final/public/api/bookUpdate', 
        formDatax, 
        {
                                /* params:{
                id: '',
                Price: '',
                Format: '',
                Review: '',
                Score: '',
                }, */
                params:{
                    id: '',
                    Price: '',
                Format: '',
                    Review: '',
                    Score: '',
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

    /* const [Book, setBook] = useState([]);           
         
            useEffect(() => {
                (async () => {
                  
                  const response = await Axios({
                      method: 'get',
                      url: 'books'
                    
                    })
                    .then(response => {
                        setBook(response.data);
                    })
                  
                })();
              }, []);

              const [User, setUser] = useState([]);           
         
              useEffect(() => {
                  (async () => {
                    
                    const response = await Axios({
                        method: 'get',
                        url: 'users'
                      
                      })
                      .then(response => {
                          setUser(response.data);
                      })
                    
                  })();
                }, []);
                const [Bookstore, setBookstore] = useState([]);           
         
              useEffect(() => {
                  (async () => {
                    
                    const response = await Axios({
                        method: 'get',
                        url: 'bookstores'
                      
                      })
                      .then(response => {
                          setBookstore(response.data);
                      })
                    
                  })();
                }, []); */

     
        return (
<Container>
            <Form onSubmit={handleSubmit}>
                <Form.Group className="mb-3">
                <h3 align= "center">Editar libro: </h3>
                    <br />
                    <br />
                    
                    <h4 align= "center">Favor de cambiar los campos que se solicitan a continuación.</h4>
                        <br />
                        <Form.Label>Id del libro:</Form.Label>
                    <Form.Control type="text" placeholder="id libro" name="id" value={data.id} onChange={handleInputChange} />                    
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Precio del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Precio del libro" name="Price" value={data.Price} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Formato del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Formato del libro" name="Format" value={data.Format} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Reseña del libro:</Form.Label>
                    <Form.Control type="text" placeholder="Reseña del libro" name="Review" value={data.Review} onChange={handleInputChange} />
                </Form.Group>

                <Form.Group className="mb-3">
                    <Form.Label>Puntuación un libro:</Form.Label>
                    <Form.Control type="text" placeholder="Puntuación del libro" name="Score" value={data.Score} onChange={handleInputChange} />
                </Form.Group>
{/*                 onClick={handleSubmit}
 */}                <Button variant="primary" type="submit" onClick={handleSubmit}>
                    Guardar cambios
                </Button>
                &nbsp;
                            &nbsp;
                <Link to="/Final/public/SBooks"  className='btn btn-danger  text-white'>Salir</Link>
            </Form>
        </Container> 
    );
}

export default UBooks;