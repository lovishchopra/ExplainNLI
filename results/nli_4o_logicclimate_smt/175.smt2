(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun AreInRoom (BoundSet BoundSet) Bool)
(declare-fun IsInRoom (BoundSet BoundSet) Bool)
(declare-fun AreInOffice (BoundSet BoundSet) Bool)
(declare-fun AreWithComputers (BoundSet BoundSet) Bool)
(declare-fun AreWithProjectorScreen (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (AreInRoom a c) (IsInRoom b c))))) (exists ((e BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (AreInOffice d e) (and (AreWithComputers d a) (AreWithProjectorScreen d b))))))))))
(check-sat)
(get-model)