import React, {useState} from 'react';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

const FormAddProduct = () => {
    const [name, setName] = useState("");
    const [amount, setAmount] = useState("");
    const [msg, setMsg] = useState("");
    const navigate = useNavigate();

    const saveProduct = async(e) => {
        e.preventDefault();
        try {
            await axios.post('http://localhost:5000/products', {
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
        <h2 className='subtitle'>Add New Product</h2>
        <div className="card is-shadowless">
            <div className="card-content">
                <div className="content">
                <form onSubmit={saveProduct}>
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
                                <input type="text" className="input" value={amount} onChange={(e) => setAmount(e.target.value)} placeholder='amount'/>
                            </div>
                        </div>
                       
                        
                        <div className="field">
                            <div className="control">
                            <button type="submit" className="button is-success">Save</button>
                            </div>
                            
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
  )
}

export default FormAddProduct