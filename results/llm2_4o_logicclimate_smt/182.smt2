(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Smokes (BoundSet) Bool)
(declare-fun LeansAgainst (BoundSet BoundSet) Bool)
(declare-fun HasFlier (BoundSet BoundSet) Bool)
(declare-fun IsAgainst (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Smokes a) (and (LeansAgainst a b) (HasFlier b c)))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (Smokes g) (LeansAgainst h i))))) (and (forall ((l BoundSet)) (forall ((j BoundSet)) (forall ((m BoundSet)) (forall ((k BoundSet)) (=> (LeansAgainst j k) (IsAgainst l m)))))) (and (forall ((p BoundSet)) (forall ((q BoundSet)) (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (IsAgainst n o) (LeansAgainst p q)))))) (and (forall ((t BoundSet)) (forall ((u BoundSet)) (forall ((r BoundSet)) (forall ((s BoundSet)) (=> (LeansAgainst r s) (HasFlier t u)))))) (forall ((v BoundSet)) (forall ((w BoundSet)) (forall ((x BoundSet)) (=> (Smokes v) (HasFlier w x)))))))))) (exists ((d BoundSet)) (exists ((f BoundSet)) (exists ((e BoundSet)) (and (Smokes d) (and (IsAgainst d e) (HasFlier e f)))))))))
(check-sat)
(get-model)