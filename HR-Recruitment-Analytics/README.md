# 📊 HR Recruitment Analytics Dashboard

Bu proje, İnsan Kaynakları departmanlarının işe alım süreçlerini uçtan uca analiz etmelerini, aday havuzunu optimize etmelerini ve veri odaklı stratejik kararlar almalarını sağlamak amacıyla geliştirilmiş dinamik bir **Power BI** dashboard çalışmasıdır.

---

## 🎯 Projenin Amacı

İşe alım performansını ölçümlemek, süreçteki darboğazları tespit etmek ve işe alım maliyetleri ile sürelerini (Time-to-Hire) optimize etmek için aşağıdaki temel sorulara yanıt sunar:
- Hangi işe alım kanalları/kaynakları daha kaliteli aday verimliliği sağlıyor?
- İşe alım sürecinin hangi aşamalarında (Başvuru ➔ Mülakat ➔ Teklif ➔ İşe Başlama) kayıplar yaşanıyor?
- Departman bazlı ortalama işe alım süreleri ne durumda?

---

## 📈 Öne Çıkan Metrikler ve Analizler

- **Funnel & Dönüşüm Oranları (Conversion Rates):** Başvurudan işe alıma kadar olan aşama bazlı aday geçiş oranları.
- **Time-to-Hire (İşe Alım Süresi):** Pozisyon açılış tarihinden adayın işe başladığı güne kadar geçen ortalama süre.
- **Kanal / Kaynak Performansı:** LinkedIn, kariyer siteleri, referanslar veya acentelerin verimlilik karşılaştırmaları.
- **Departman ve Pozisyon Bazlı Analizler:** Departman bazında açık pozisyon sayısı ve kapatılma süreleri.

---

## 🛠️ Proje Mimarisi ve Teknik Detaylar

Power BI şablon dosyası (`.pbix` / `.pbit`) aşağıdaki bileşenlerden oluşmaktadır:

```text
├── DataModel               # Yıldız Şema yapısında tasarlanmış veri modeli ve DAX ölçütleri[cite: 3]
├── Report/                 # Layout düzeni, kartlar, filtreler ve sayfa yapılandırması[cite: 3]
│   ├── Layout              # Dashboard visual düzeni[cite: 3]
│   └── StaticResources/    # Görsel varlıklar ve tema ayarları[cite: 3]
│       ├── BaseThemes/     # Özel renk paleti ve tipografi teması (CY26SU07.json)[cite: 3]
│       └── RegisteredResources/ # Statik ikonlar ve logolar[cite: 3]
└── [Content_Types].xml     # Proje metadata yapılandırmaları[cite: 3]<img width="1152" height="633" alt="Ekran görüntüsü 2026-08-27 150548" src="https://github.com/user-attachments/assets/e23096ef-dfaf-4d85-afda-d87826e8e684" />

<img width="1152" height="633" alt="Ekran görüntüsü 2026-08-27 150548" src="https://github.com/user-attachments/assets/798a24dd-c18e-4324-8575-7c12cad2a3fb" />
