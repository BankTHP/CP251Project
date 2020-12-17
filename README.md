# CP251Project
## โครงสร้างของโปรแกรมแบ่งเป็น Folder
* css ตกแต่งหน้าเว็บ
* Faculty folder ที่เก็บข้อมูลของ Faculty.html ซึ่งมีข้อมูลเกี่ยวกับคณะต่างๆในมหาลัย
  * Logo เก็บรูปภาพ
  * Faculty.html
* img เก็บรูปภาพ
* index folder ที่เก็บข้อมูลของ indel.html ซึ่งมีข้อมูลเกี่ยวการเดินทางมามหาลัย (ซึ่งเป็นหน้าหลักของโปรแกรมนี้)
  * css ตกแต่งหน้าเว็บ
  * howto เก็บรูปภาพ
* js เก็บ script 
* Login
  * connec.php เชื่อมต่อ Database 
  * index.php หน้าLogin เพื่อเข้าไปยัง update/admin.php
* search
  * css ตกแต่งหน้าเว็บ
  * all_user.php หน้าโชว์ข้อมูลทั้งหมด
  * connectdb.php เชื่อมต่อ Database 
  * index.php หน้าเช็คบัวศรีไอดี+captcha
  * search_result.php เชื่อมต่อ Database 
* service
  * Logo เก็บรูปภาพ
  * service.html
* update
  * boostrap ตกแต่งหน้าเว็บ
  * font-awesome ตัวอักษร
  * img เก็บรูป
  * js script
  * php 
    * verity.php รับค่า name มาจาก textarea เพื่อเช็คว่า name กับ pattern(บัวศรีไอดี) 
  * admin.php เป็นหน้า admin ที่คอยกยืนยันค่าจาก user_map.php
  * db.php เชื่อม database
  * footer.php และ footAdmin คือส่วนท้ายของหน้าเว็บ
  * header.php ส่วนหัวของหน้าเว็บ
  * index.php คือ หน้าเช็ดบัวศรีไอดีที่ส่งค่าไปให้ verity.php
  * location_model.php คือ เป็นหน้ารวมฟังก์ชันโดยเช็คจากค่าที่รับมา
  * user_map.php คือ เป็นหน้าที่หลังจากเช็คเงื่อนไขแล้วจะสามารถเพิ่ม marker ได้

## โครงสร้างของการติดตั้งโปรแกรม

  * โปรแกรมที่จำเป็น [xampp](https://www.apachefriends.org/index.html) เพื่อทำการรันโปรแกรมและเพิ่มข้อมูล
  * โหลดไฟล์ที่ได้ไปแตกไฟล์ที่ htdoc ของคุณ
  * นำสคริปต์ cp251project สำหรับสร้างฐานข้อมูลรันใน PHPMyAdmin เพื่อสร้างฐานข้อมูลและตารางที่เกี่ยวข้อง
  
## คลิปวีดีโอ
  ตัวอย่างคลิปของโปรแกรม [SWUMAP](https://youtu.be/YiWKCoz04TU)

