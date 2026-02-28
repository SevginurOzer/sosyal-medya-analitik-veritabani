SELECT 
    i.icerik_turu, 
    ROUND(AVG(p.etkilesim_orani), 2) as ortalama_er,
    SUM(p.erisim) as toplam_erisim
FROM icerik_plani i
JOIN performans_verileri p ON i.icerik_id = p.icerik_id
GROUP BY i.icerik_turu
ORDER BY ortalama_er DESC;




SELECT
  EXTRACT(HOUR FROM i.paylasim_tarihi) as paylasim_saati,
  i.icerik_konusu,
  p.etkilesim_orani
FROM icerik_plani i
JOIN performans_verileri p ON i.icerik_id = p.icerik_id
WHERE p.etkilesim_orani > 10.0
ORDER BY paylasim_saati ASC;
