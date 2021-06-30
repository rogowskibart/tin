DROP TABLE tweets;

CREATE TABLE tweets(
   tweet_id INT NOT NULL AUTO_INCREMENT,
   author VARCHAR(100) NOT NULL,
   date DATE,
   numberOfRetweets INT,
   numberOfLikes INT,
   body VARCHAR(150) NOT NULL,
   PRIMARY KEY ( tweet_id )
);

INSERT INTO tweets (author,date,numberOfRetweets,numberOfLikes,body)
VALUES
("@lorem"      ,"2021-06-04",5843,8644,"Nullam orci felis, faucibus ac mi tempus, tincidunt pulvinar ante."),
("@ipsum"      ,"2021-06-07",3300,976 ,"Curabitur pharetra arcu vel ornare tempor."),
("@dolor"      ,"2021-06-08",8663,2889,"Vivamus tellus orci, dictum id metus id, tempus cursus dolor."),
("@sit"        ,"2021-06-09",8932,5146,"Cras volutpat, tortor in feugiat luctus, enim nibh placerat tellus, vitae hendrerit eros nulla a justo."),
("@amet"       ,"2021-06-13",3869,3265,"Aliquam nec leo sed dolor finibus porta nec eget lorem."),
("@consectetur","2021-06-19",4836,2652,"Maecenas molestie eu mauris eu porttitor."),
("@adipiscing" ,"2021-06-22",3895,1596,"Nulla a massa vel enim volutpat elementum et eu tortor."),
("@elit"       ,"2021-06-24",8646,6969,"Nullam quis lectus efficitur, cursus risus eget, venenatis nisl."),
("@vivamus"    ,"2021-06-25",4730,5665,"Morbi mauris quam, accumsan ut odio auctor, faucibus vulputate lectus."),
("@nec"        ,"2021-06-28",6988,3529,"Phasellus non nibh arcu.");
