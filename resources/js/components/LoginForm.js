import React, { useState } from "react";
import ReactDOM from "react-dom";
import { Form, Container, Row, Button, Alert } from "react-bootstrap";
import axios from "axios";
import { useHistory, useParams, useNavigate } from "react-router-dom";
const LoginForm = () => {
    const [showErr, setShowErr] = useState(false);
    const [formValue, setformValue] = useState({
        email: "",
        password: "",
    });
    //let history = useHistory();
    let navigation = useNavigate();

    const onChange = (e) => {
        e.persist();
        setformValue({ ...formValue, [e.target.name]: e.target.value });
    };
    const handleSubmit = (e) => {
        if (e && e.preventDefault()) e.preventDefault();
        const formData = new FormData();
        formData.append("email", formValue.email);
        formData.append("password", formValue.password);
        axios
            .post(
                "http://localhost:80/Final/public/api/login",
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
                navigation(`/Final/public/${response.data.role}`);
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
        <div>
    <Alert
                show={showErr}
                variant="danger"
                onClose={() => setShowErr(false)}
                dismissible
            >
                <center>
                    <Alert.Heading>
                        Datos incorrectos.
                    </Alert.Heading>
                    <p>
                        Vuelva a intentarlo.
                    </p>
                </center>
        </Alert>
        <Container>
            <Form onSubmit={handleSubmit}>


            <div Name = "link1">
<img src= "https://scontent.fgdl3-1.fna.fbcdn.net/v/t39.30808-6/285833074_5089662567737302_3107655739379725850_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=8bfeb9&_nc_eui2=AeGC9NL8Gp7Y16SoG_pJ0pYm9Du1yLwNoPT0O7XIvA2g9PcFyh86h-sJDNXOfzXiMcX3zIMnzqDOvWaOYsQpHeYK&_nc_ohc=CSJemxPHvHgAX_AtsfP&_nc_ht=scontent.fgdl3-1.fna&oh=00_AT_i-lN6_SDbtYorIuMn22qhzEq7Sr1zRdENItMBhbVkmw&oe=629E9B3D"

 width="500" height="auto"
                    class="img-fluid d-block mx-auto"></img>
            </div>
            
                <Form.Group className="mb-3" controlId="formBasicEmail">
                    <Form.Label>Correo electrónico</Form.Label>
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
        </div>
    );
};
export default LoginForm;