import React, { useState } from "react";
import ReactDOM from "react-dom";
import { Form, Container, Row, Button } from "react-bootstrap";
import axios from "axios";
import { useHistory, useParams } from "react-router-dom";
const LoginForm = () => {
    const [formValue, setformValue] = useState({
        name: "",
        email: "",
        password: "",
    });
    //let history = useHistory();
    const onChange = (e) => {
        e.persist();
        setformValue({ ...formValue, [e.target.name]: e.target.value });
    };
    const handleSubmit = (e) => {
        if (e && e.preventDefault()) e.preventDefault();
        const formData = new FormData();
        formData.append("name", formValue.name);
        formData.append("email", formValue.email);
        formData.append("password", formValue.password);
        axios
            .post(
                "http://localhost:80/Final/public/api/register",
                formData,
                {
                    headers: {
                        "Content-Type": "multipart/form-data",
                        Accept: "application/json",
                    },
                }
            )
            .then((response) => {
                console.log("response:");
                console.log(response);
                // history.push({
                // pathname: "/2021B/topicos/public/Home",
                // state:{token:response.data.token}
                // }
                // )
            })
            .catch((error) => {
                console.log(error);
            });
    };
    return (
        <Container>



<div Name = "link1">
<img src="https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285852227_5089662151070677_8044017992784685851_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeHSq50a3Zvf_KEuEJssvC3if7mmdScV8M9_uaZ1JxXwzyYCdS7_XCckFeyxHxMYSCIwZQAZTBQICg8gYnFuskue&_nc_ohc=N35epOHTaQIAX9SfaD1&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT_oDvCRVSIjM8MUMJJ9Db4Gl46IhcdzMUyY6uh829tQ1Q&oe=629E6ED1"
 width="500" height="auto"
                    class="img-fluid d-block mx-auto"></img>
            </div>
            
            <Form onSubmit={handleSubmit}>
            <Form.Group className="mb-3" controlId="formBasicEmail">
                    <Form.Label>Nombre</Form.Label>
                    <Form.Control
                        type="text"
                        placeholder="Nombre"
                        name="name"
                        value={formValue.name}
                        onChange={onChange}
                    />
                    <Form.Text className="text-muted">
                        
                    </Form.Text>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formBasicEmail">
                    <Form.Label>Correo electrónico:</Form.Label>
                    <Form.Control
                        type="email"
                        placeholder="Correo electrónico"
                        name="email"
                        value={formValue.email}
                        onChange={onChange}
                    />
                    <Form.Text className="text-muted">
                      
                    </Form.Text>
                </Form.Group>
                
                <Form.Group className="mb-3" controlId="formBasicPassword">
                    <Form.Label>Contraseña:</Form.Label>
                    <Form.Control
                        type="password"
                        placeholder="Contraseña"
                        name="password"
                        value={formValue.password}
                        onChange={onChange}
                    />
                </Form.Group>
                <Form.Group className="mb-3" controlId="formBasicCheckbox">
                    <Form.Check type="checkbox" label="Check me out" />
                </Form.Group>
                <Button variant="primary" type="submit">
                    Enviar
                </Button>
            </Form>
        </Container>
    );
};
export default LoginForm;