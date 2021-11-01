#  YZM508-Vize-VeritabanıYönetimSistemleri
 
Ön bilgi: Bu proje kapsamında kendi belirleyeceğiniz bir alanda (domain) bir veri tabanı tasarımı gerçekleştireceksiniz. Modeliniz seçilen alana göre gerçekçi kısıtlar ve kurallara bağlı kalmalıdır. Alan çok kapsamlı ise sadece bir bölümünü ya da parçasını seçip modelleyebilirsiniz. Tüm modeli oluşturmak zorunda değilsiniz.
Örneğin ‘eğitim’ alanı seçildiğini düşünür isek;
•	bir ‘derslik’ varlığı (entity) birden fazla ‘ders’ varlığı ile ilişkilendirilebilecektir (relationship). 
•	‘ders’ varlığı ‘ders_kodu’, ‘ders_adı’, ‘kredi’ vb. özellikler (attribute) içerebilecektir. 
•	‘derslik’ ile ‘bilgisayarlı_derslik’ varlıkları arasında ISA ilişkisi kurulabilecektir.

Bölüm 1) Seçmiş olduğunuz alan için ER (varlık-ilişki) diyagramını çiziniz. Çiziminizi bilgisayar ortamında yapabileceğiniz gibi kağıt kalem ile de yapıp görüntüsünü rapora ekleyebilirsiniz. ER diyagramınız aşağıdaki kısıtları sağlamalıdır:
1)	En az 4 tane varlık (entity)
2)	En az 1 tane one-to-one ya da one-to-exactlty-one ilişki (1-1 relationship)
3)	En az 1 tane many-to-one ilişki (1-to-n relationship)
4)	En az 1 tane many-to-many ilişki (n-to-n relationship)
5)	Varsa weak entity ilişkisi ya da ISA ilişkisi türlerinden uygun olanı

Bölüm 2) Bölüm 1’de oluşturduğunuz ER modelini Relational (ilişkisel) modele dönüştürünüz.

Bölüm 3) Bölüm 2’de oluşturduğunuz ilişkisel modelden uygun bir relation seçiniz ve aşağıdaki istenenleri gösteriniz:
1)	Seçilen relation için geçerli tüm FD’leri (fonksiyonel bağımlılık) belirleyiniz.
2)	Seçilen relation için belirlediğiniz anahtarın ‘closure set’ini bulunuz (derste anlatılan algorma ile adım adım) ve bulduğunuz closure set’in relation içerisindeki tüm özellikleri (attribute) içerdiğini gösteriniz.
3)	Seçilen relation’ın 3NF ve BCNF formatlarında olup olmadığını test ederek belirleyiniz (Varsa ihlalleri (violations) belirtiniz. Bu soruda sadece varsa ihlalleri göstermek yeterli, normalizasyon yapmaya yok).

Bölüm 4) Bölüm 2’de oluşturduğunuz her bir relation için gerçek veri tabanı tabloları yaratmak üzere SQL DDL komutları (create table) hazırlayınız (komutlar sadece yazı (text) olarak hazırlanacak, bu aşamada MySQL üzerinde çalıştırmaya gerek yok).
