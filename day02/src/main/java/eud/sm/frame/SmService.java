package eud.sm.frame;

import java.util.List;

public interface SmService<V, K> {
    // 등록
    void register(V v) throws Exception;
    // 수정
    void modify(V v) throws Exception;
    // 삭제
    void remove(K k) throws Exception;
    // 전체 조회
    List<V> get() throws Exception;
    // 단일 조회
    V get (K k) throws Exception;

}
