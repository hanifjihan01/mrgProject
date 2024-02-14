import React, { useState } from 'react';
import 'bulma/css/bulma.min.css';

const DashboardFinance = () => {
  const [pengajuanList, setPengajuanList] = useState([
    { id: 1, nama: 'Hanif', status: 'Pending' },
    { id: 2, nama: 'Hanif', status: 'Pending' },
    { id: 3, nama: 'Hanif', status: 'Pending' },
  ]);
  const [alasan, setAlasan] = useState('');
  const [buktiTransfer, setBuktiTransfer] = useState('');

  const handleApprove = (id) => {
    const updatedList = pengajuanList.map((pengajuan) =>
      pengajuan.id === id ? { ...pengajuan, status: 'Approved' } : pengajuan
    );
    setPengajuanList(updatedList);
  };

  const handleReject = (id) => {
    const inputAlasan = prompt('Masukkan alasan penolakan:');
    if (inputAlasan) {
      const updatedList = pengajuanList.map((pengajuan) =>
        pengajuan.id === id ? { ...pengajuan, status: 'Rejected', alasan: inputAlasan } : pengajuan
      );
      setPengajuanList(updatedList);
      setAlasan('');
      alert('Alasan berhasil tersimpan');
    }
  };

  return (
    <div className="container">
      <h1 className="title">Dashboard Finance</h1>
      <div className="box">
        <h2 className="subtitle">List Pengajuan</h2>
        <table className="table is-fullwidth">
          <thead>
            <tr>
              <th>No.</th>
              <th>Nama Pengajuan</th>
              <th>Status</th>
              <th>Actions</th>
            </tr>
          </thead>
          <tbody>
            {pengajuanList.map((pengajuan, index) => (
              <tr key={index}>
                <td>{index + 1}</td>
                <td>{pengajuan.nama}</td>
                <td>{pengajuan.status}</td>
                <td>
                  {pengajuan.status === 'Pending' && (
                    <>
                      <button className="button is-success mr-2" onClick={() => handleApprove(pengajuan.id)}>
                        Approve
                      </button>
                      <button className="button is-danger" onClick={() => handleReject(pengajuan.id)}>
                        Reject
                      </button>
                    </>
                  )}
                  {pengajuan.status === 'Approved' && (
                    <input type="file" onChange={(e) => setBuktiTransfer(e.target.files[0])} />
                  )}
                  {pengajuan.status === 'Rejected' && <p>Alasan Penolakan: {pengajuan.alasan}</p>}
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
};

export default DashboardFinance;
