-- Marka Ekleme
INSERT INTO markalar (marka_adi, sektor) VALUES 
('Eskişehir Gurme', 'Gıda & Restoran'),
('Akdeniz Teknoloji', 'Bilişim');

-- İçerik Planı Ekleme (Marka_id 1: Tarsus Gurme, Marka_id 2: Akdeniz Teknoloji)
INSERT INTO icerik_plani (marka_id, icerik_turu, paylasim_tarihi, icerik_konusu) VALUES 
(1, 'Reels', '2026-02-28 19:30:00', 'Eskişehir İçli Böreği - Mutfak Arkası'),
(1, 'Post', '2026-02-28 11:00:00', 'Haftalık Rezervasyon Hatırlatması'),
(2, 'Kaydırmalı', '2026-02-28 16:00:00', 'Yapay Zeka Araçları - Top 5');

-- Performans Verisi Ekleme
INSERT INTO performans_verileri (icerik_id, erisim, kaydedilme, etkilesim_orani) VALUES 
(1, 8500, 1200, 22.40), -- Akşam paylaşılan yemek Reels'ı çok yüksek etkileşim aldı
(2, 900, 15, 3.10),    -- Sabah paylaşılan bilgilendirme postu düşük kaldı
(3, 3500, 650, 14.80);  -- Teknoloji konulu kaydırmalı post iyi performans gösterdi
