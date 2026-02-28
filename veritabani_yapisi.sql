-- Tablo yapılarını kurar
CREATE TABLE markalar (
    marka_id SERIAL PRIMARY KEY,
    marka_adi VARCHAR(100) NOT NULL,
    sektor VARCHAR(50)
);

CREATE TABLE icerik_plani (
    icerik_id SERIAL PRIMARY KEY,
    marka_id INTEGER REFERENCES markalar(marka_id),
    icerik_turu VARCHAR(20),
    paylasim_tarihi TIMESTAMP NOT NULL,
    icerik_konusu VARCHAR(255)
);

CREATE TABLE performans_verileri (
    performans_id SERIAL PRIMARY KEY,
    icerik_id INTEGER REFERENCES icerik_plani(icerik_id),
    erisim INTEGER DEFAULT 0,
    kaydedilme INTEGER DEFAULT 0,
    etkilesim_orani DECIMAL(5,2)
);
