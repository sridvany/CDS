import pandas as pd

# Dosya yolunu belirt
dosya_yolu = r"........." #investing'den verilerin bilgisayara indirilmesi ve düzenlenmesi sonucu oluşan dosya

# Veriyi oku (ayraç olarak ; kullanılıyor)
cds_df = pd.read_csv(dosya_yolu, sep=';', encoding='utf-8')  #csv olarak indirilen verilerde sütun ayrımı sonrasında head kodunun istenen şekilde çalışması için bir düzenleme kodu
# Tarih sütununu datetime formatına çevir
cds_df['Tarih'] = pd.to_datetime(cds_df['Tarih'], dayfirst=True) #csv olarak indirilen verilerde sütun ayrımı sonrasında head kodunun istenen şekilde çalışması için bir düzenleme kodu

# DataFrame’in ilk satırlarını göster
print(cds_df.head())
