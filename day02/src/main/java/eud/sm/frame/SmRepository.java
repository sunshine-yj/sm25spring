package eud.sm.frame;

import java.util.List;

public interface SmRepository<V, K> {
    // Database에 CRUD 기능 정의
    // Insert (C), select(R), update (U), Delete (D)
    // Insert (C)
    void insert(V v) throws Exception;
    // update (U)
    void update(V v) throws Exception;
    // Delete (D)
    void delete(K k) throws Exception;
    // select (R)
    List<V> selectAll() throws Exception;
    V select(K k) throws Exception;
}
