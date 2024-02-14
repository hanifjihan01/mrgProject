import React, {useState, useEffect} from 'react';
import axios from 'axios';
import { useNavigate, useParams } from 'react-router-dom';

const FormEditProduct = () => {
    const [name, setName] = useState("");
    const [amount, setAmount] = useState("");
    const [msg, setMsg] = useState("");
    const navigate = useNavigate();
    const {id} = useParams();

    useEffect(()=>{
        const getProductById = async () =>{
            try {
                const response = await axios.get(`http://localhost:5000/products/${id}`);
                setName(response.data.name);
                setAmount(response.data.amount);
            } catch (error) {
                if(error.response){
                    setMsg(error.response.data.msg);
                }
            }
        }
        getProductById();
    },[id]);

    const updateProduct = async(e) => {
        e.preventDefault();
        try {
            await axios.patch(`http://localhost:5000/products/${id}`, {
                name: name,
                amount: amount
            });
            navigate("/products");
        } catch (error) {
            if(error.response){
                setMsg(error.response.data.msg);
            }
        }
    };
  return (
    <div>
        <h1 className='title'>Products</h1>
        <h2 className='subtitle'>Edit Product</h2>
        <div className="card is-shadowless">
            <div className="card-content">
                <div className="content">
                <form onSubmit={updateProduct}>
                    <p className="has-text-centered">{msg}</p>
                <div className="field">
                            <label className="label">Name</label>
                            <div className="control">
                                <input type="text" className="input" value={name} onChange={(e) => setName(e.target.value)} placeholder='Product Name'/>
                            </div>
                            </div>
                        <div className="field">
                            <label className="label">Amount</label>
                            <div className="control">
                                <input type="text" className="input"  value={amount} onChange={(e) => setAmount(e.target.value)} placeholder='amount'/>
                            </div>
                        </div>
                       
                        
                        <div className="field">
                            <div className="control">
                            <button type="submit" className="button is-success">Update</button>
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  )
}

export default FormEditProduct