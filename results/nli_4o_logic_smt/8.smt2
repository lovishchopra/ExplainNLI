(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsHavingLunch (BoundSet BoundSet) Bool)
(declare-fun IsWith (BoundSet BoundSet) Bool)
(declare-fun IsFor (BoundSet BoundSet) Bool)
(declare-fun IsDitching (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (IsHavingLunch a c) (IsWith a b))))) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsFor e f) (IsWith e f))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsDitching a d) (IsFor a b))))))))
(check-sat)
(get-model)