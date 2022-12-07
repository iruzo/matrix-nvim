lua << EOF
package.loaded['matrix'] = nil
package.loaded['matrix.util'] = nil
package.loaded['matrix.colors'] = nil
package.loaded['matrix.theme'] = nil
package.loaded['matrix.functions'] = nil

require('matrix').set()
EOF
