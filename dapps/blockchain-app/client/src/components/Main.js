import React from "react";

const Main = () => {
  return (
    <div className="mainConainer">
      <div className="cryptContainer">
        <h1 className="title">Crypt Card</h1>
        <button type="button">
          <p className="buttonText">ウォレット連携</p>
        </button>
      </div>
      <div className="inputContainer">
        <input type="text" placeholder="アドレス" name="addressTo" />
        <input type="number" placeholder="通貨(ETH)" name="amount" />
      </div>
    </div>
  );
};

export default Main;
