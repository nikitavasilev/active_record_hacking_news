## Exercice du HackingNews

Exercice réalisé dans le cadre de la semaine Rails (THP), par notre belle équipe :
- [Ysaline Macé](https://github.com/Ysalien)
- [Nikita Vasilev](https://github.com/nikitavasilev)
- [Arthur Mansuy](https://github.com/tutus06) 
- [Thomas Charvet](https://github.com/TomacTh) 
- [Nathaniel Debache](https://github.com/Natdenice).

## Database

HackingNews est une base de données, réalisée à partir de rails, permettant de poster des liens.
Les users peuvent poster des liens, qui sont définis par un titre et contiennent des urls. Ces urls peuvent être commentés et les commentaires peuvent eux-même être commentés.

On retrouve alors les models User (table users), Link (table links), Comment (table comments) et Recomment(table recomments).
Un index est créé dans links liant l'id user avec l'url, et un index pour le comments qui va être ainsi lié à l'id de l'url et celui de l'user.
Enfin le Recomment va être lié à l'user et au comment (et non au lien, cette fois).

Ces différentes jointures sont effectuées avec le t.belongs_to :nomdetonmodel, index: true dans la table visée et les belongs_to :nomdetonmodel et has_many :nomdetatable dans les models.

##### NB
N'oubliez de faire le bundle install dans votre terminal ! Les models se trouvent dans le sous-fichier model, dans app. Les tables se trouvent dans le fichier migrate, contenu dans db.
