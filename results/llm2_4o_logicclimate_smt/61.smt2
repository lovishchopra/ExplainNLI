(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun { () BoundSet)
(declare-fun | () BoundSet)
(declare-fun IsMarineScientistFor35Years (BoundSet) Bool)
(declare-fun Published (BoundSet BoundSet) Bool)
(declare-fun InJournal (BoundSet BoundSet) Bool)
(declare-fun AreFlawed (BoundSet) Bool)
(declare-fun AreBiased (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsMarineScientistFor35Years a) (and (Published a c) (InJournal c d)))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsMarineScientistFor35Years g) (AreFlawed h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (AreFlawed i) (IsMarineScientistFor35Years j)))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (forall ((k BoundSet)) (=> (Published k l) (AreFlawed m))))) (and (forall ((p BoundSet)) (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (AreFlawed n) (Published o p))))) (and (forall ((s BoundSet)) (forall ((q BoundSet)) (forall ((r BoundSet)) (=> (Published q r) (AreBiased s))))) (and (forall ((v BoundSet)) (forall ((u BoundSet)) (forall ((t BoundSet)) (=> (AreBiased t) (Published u v))))) (and (forall ((y BoundSet)) (forall ((w BoundSet)) (forall ((x BoundSet)) (=> (AreFlawed w) (InJournal x y))))) (forall ((z BoundSet)) (=> (AreBiased z) (InJournal { |))))))))))) (exists ((e BoundSet)) (and (AreFlawed e) (AreBiased e))))))
(check-sat)
(get-model)