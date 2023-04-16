package ${baseInfo.packageName};

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.api.ApiController;
import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import ${tableClass.fullClassName};
import ${serviceInterface.packageName}.${serviceInterface.fileName};
import ${mapperInterface.packageName}.${mapperInterface.fileName};
import javax.annotation.Resource;
import java.io.Serializable;

/**
* @author ${author!}
* @description Contorller实现
* @createDate ${.now?string('yyyy-MM-dd HH:mm:ss')}
*/
@RestController
@RequestMapping("/${baseInfo.fileName}")
public class ${baseInfo.fileName} extends ApiController {

    /**
    * 服务对象
    */
    @Resource
    private ${baseInfo.fileName}Service ${baseInfo.fileName};

    /**
    * 分页查询所有数据
    *
    * @param page 分页对象
    * @param $!entityName 查询实体
    * @return 所有数据
    */
    @GetMapping
    public R selectAll(Page<$!tableInfo.name> page, $!tableInfo.name $!entityName) {
        return success(this.$!{serviceName}.page(page, new QueryWrapper<>($!entityName)));
    }

    /**
    * 通过主键查询单条数据
    *
    * @param id 主键
    * @return 单条数据
    */
    @GetMapping("{id}")
    public R selectOne(@PathVariable Serializable id) {
        return success(this.$!{serviceName}.getById(id));
    }

    /**
    * 新增数据
    *
    * @param $!entityName 实体对象
    * @return 新增结果
    */
    @PostMapping
    public R insert(@RequestBody $!tableInfo.name $!entityName) {
        return success(this.$!{serviceName}.save($!entityName));
    }

    /**
    * 修改数据
    *
    * @param $!entityName 实体对象
    * @return 修改结果
    */
    @PutMapping
    public R update(@RequestBody $!tableInfo.name $!entityName) {
        return success(this.$!{serviceName}.updateById($!entityName));
    }

    /**
    * 删除数据
    *
    * @param idList 主键结合
    * @return 删除结果
    */
    @DeleteMapping
    public R delete(@RequestParam("idList") List<Long> idList) {
        return success(this.$!{serviceName}.removeByIds(idList));
    }

}




