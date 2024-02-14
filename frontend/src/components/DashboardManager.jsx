import React, { useState, useEffect } from 'react';
import 'bulma/css/bulma.min.css';
import axios from 'axios';

const DashboardManager = () => {
  const [pendingApprovals, setPendingApprovals] = useState([]);
  const [approvedHistory, setApprovedHistory] = useState([]);
  const [rejectReason, setRejectReason] = useState('');
  const [rejectedProductId, setRejectedProductId] = useState('');
  

  useEffect(() => {
   
    axios.get('http://localhost:5000/products')
      .then(response => {
        setPendingApprovals(response.data);
      })
      .catch(error => {
        console.error('Error fetching pending approvals:', error);
      });

    
    axios.get('http://localhost:5000/approved-products')
      .then(response => {
        setApprovedHistory(response.data);
      })
      .catch(error => {
        console.error('Error fetching approved history:', error);
      });
  }, []);

  const handleApprove = async (id) => {
    
    const productToApprove = pendingApprovals.find(product => product.uuid === id);

    
    setApprovedHistory([...approvedHistory, productToApprove]);

    
    setPendingApprovals(pendingApprovals.filter(product => product.uuid !== id));

    
    await axios.post('http://localhost:5000/approved-products', productToApprove);
  };

  const handleReject = (id) => {
    
    setRejectedProductId(id);
    const reason = prompt('Masukkan alasan penolakan:');
    if (reason) {
      
      setRejectReason(reason);
      const updatedProducts = pendingApprovals.filter(product => product.uuid !== id);
      setPendingApprovals(updatedProducts);
    }
  };

  return (
    <div className="container">
      <h1 className="title">Dashboard Manager</h1>

      <div className="section">
        <h2 className="subtitle">List Pengajuan yang perlu di approve</h2>
        <table className="table is-bordered is-striped is-narrow is-hoverable">
          <thead>
            <tr>
              <th>No</th>
              <th>Product Name</th>
              <th>Amount</th>
              <th>Created By</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            {pendingApprovals.map((product, index) => (
              <tr key={product.uuid}>
                <td>{index + 1}</td>
                <td>{product.name}</td>
                <td>{product.amount}</td>
                <td>{product.user.name}</td>
                <td>
                  <button className="button is-success" onClick={() => handleApprove(product.uuid)}>
                    Approve
                  </button>
                  <button className="button is-danger" onClick={() => handleReject(product.uuid)}>
                    Reject
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <div className="section">
        <h2 className="subtitle">History Pengajuan yang telah di Approve</h2>
        <table className="table is-bordered is-striped is-narrow is-hoverable">
          <thead>
            <tr>
              <th>No</th>
              <th>Product Name</th>
              <th>Amount</th>
              <th>Created By</th>
            </tr>
          </thead>
          <tbody>
            {approvedHistory.map((product, index) => (
              <tr key={product.uuid}>
                <td>{index + 1}</td>
                <td>{product.name}</td>
                <td>{product.amount}</td>
                <td>{product.user.name}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default DashboardManager;
